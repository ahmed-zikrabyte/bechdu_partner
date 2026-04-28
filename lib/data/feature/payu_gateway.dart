import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bechdu_partner/secret/secret_keys.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:payu_checkoutpro_flutter/PayUConstantKeys.dart';
import 'package:payu_checkoutpro_flutter/payu_checkoutpro_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PayUGateway {
  PayUGateway(this.context);

  final BuildContext context;

  /// Opens PayU payment.
  ///
  /// Priority is given to Native SDK (CheckoutPro) if txnid is alphanumeric.
  Future<Map<String, dynamic>?> makePayment({
    required Map<String, dynamic> payuData,
  }) async {
    final txnid = (payuData['txnid'] ?? '').toString();

    // SDK requirement: txnid must be strictly alphanumeric (no hyphens/underscores)
    final isAlphaNum =
        txnid.isNotEmpty && RegExp(r'^[a-zA-Z0-9]+$').hasMatch(txnid);

    log('PayUGateway: txnid=$txnid, isAlphaNum=$isAlphaNum');

    // Ensure hash is present or calculated if salt is available (fallback)
    if (payuData['hash'] == null || payuData['hash'].toString().isEmpty) {
      final hash = calculateInitiationHash(
        key: (payuData['key'] ?? payUMerchantKey).toString(),
        txnid: txnid,
        amount: payuData['amount'].toString(),
        productInfo: payuData['productinfo'].toString(),
        firstname: payuData['firstname'].toString(),
        email: payuData['email'].toString(),
        udf1: payuData['udf1']?.toString() ?? '',
        udf2: payuData['udf2']?.toString() ?? '',
        udf3: payuData['udf3']?.toString() ?? '',
        udf4: payuData['udf4']?.toString() ?? '',
        udf5: payuData['udf5']?.toString() ?? '',
        salt: payUSalt,
      );
      payuData['hash'] = hash;
    }

    return await Navigator.of(context).push<Map<String, dynamic>?>(
      MaterialPageRoute(
        builder: (_) => _PayUCheckoutProScreen(payuData: payuData),
        // isAlphaNum
        //     ? _PayUCheckoutProScreen(payuData: payuData)
        //     : _PayUWebViewScreen(payuData: payuData),
      ),
    );
  }

  static String calculateInitiationHash({
    required String key,
    required String txnid,
    required String amount,
    required String productInfo,
    required String firstname,
    required String email,
    required String udf1,
    required String udf2,
    required String udf3,
    required String udf4,
    required String udf5,
    required String salt,
  }) {
    final raw =
        "$key|$txnid|$amount|$productInfo|$firstname|$email|$udf1|$udf2|$udf3|$udf4|$udf5||||||$salt";
    final bytes = utf8.encode(raw);
    return sha512.convert(bytes).toString();
  }
}

class _PayUCheckoutProScreen extends StatefulWidget {
  const _PayUCheckoutProScreen({required this.payuData});

  final Map<String, dynamic> payuData;

  @override
  State<_PayUCheckoutProScreen> createState() => _PayUCheckoutProScreenState();
}

class _PayUCheckoutProScreenState extends State<_PayUCheckoutProScreen>
    implements PayUCheckoutProProtocol {
  late final PayUCheckoutProFlutter _checkoutPro;
  final Completer<Map<String, dynamic>?> _result = Completer();
  bool _started = false;

  @override
  void initState() {
    super.initState();
    _checkoutPro = PayUCheckoutProFlutter(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _started) return;
      _started = true;
      _openCheckout();
    });
  }

  Future<void> _openCheckout() async {
    final payuData = widget.payuData;

    // Environment: "0" for Production, "1" for Test
    final env = payUIsProduction ? "0" : "1";
    final surl = (payuData['surl'] ?? '').toString();
    final furl = (payuData['furl'] ?? '').toString();
    final email = (payuData['email'] ?? 'info@bechdu.in').toString();
    final key = (payuData['key'] ?? payUMerchantKey).toString();
    final phone = (payuData['phone'] ?? '').toString();
    final amount = (payuData['amount'] ?? '').toString();
    final firstName = (payuData['firstname'] ?? 'Partner').toString();
    final productInfo = (payuData['productinfo'] ?? 'Coin Purchase').toString();

    // Transaction ID must be alphanumeric and <= 25 characters for some SDK versions
    final rawTxnId = (payuData['txnid'] ?? '').toString();
    final txnId = rawTxnId.length <= 25 ? rawTxnId : rawTxnId.substring(0, 25);

    final additionalParam = <String, dynamic>{
      'payment': (payuData['hash'] ?? '').toString(),
      'udf1': (payuData['udf1'] ?? '').toString(),
      'udf2': (payuData['udf2'] ?? '').toString(),
      'udf3': (payuData['udf3'] ?? '').toString(),
      'udf4': (payuData['udf4'] ?? '').toString(),
      'udf5': (payuData['udf5'] ?? '').toString(),
    };

    final payUPaymentParams = <String, dynamic>{
      PayUPaymentParamKey.key: key,
      PayUPaymentParamKey.transactionId: txnId,
      PayUPaymentParamKey.amount: amount,
      PayUPaymentParamKey.productInfo: productInfo,
      PayUPaymentParamKey.firstName: firstName,
      PayUPaymentParamKey.email: email,
      PayUPaymentParamKey.phone: phone,
      PayUPaymentParamKey.environment: env,
      PayUPaymentParamKey.android_surl: surl,
      PayUPaymentParamKey.android_furl: furl,
      PayUPaymentParamKey.ios_surl: surl,
      PayUPaymentParamKey.ios_furl: furl,
      PayUPaymentParamKey.additionalParam: additionalParam,
      PayUPaymentParamKey.userCredential: '$key:$email',
    };

    final payUCheckoutProConfig = <String, dynamic>{
      PayUCheckoutProConfigKeys.merchantName: 'Bechdu',
      PayUCheckoutProConfigKeys.showExitConfirmationOnCheckoutScreen: true,
      PayUCheckoutProConfigKeys.showExitConfirmationOnPaymentScreen: true,
      'showAfterPaymentPage': false,
    };

    try {
      await _checkoutPro.openCheckoutScreen(
        payUPaymentParams: payUPaymentParams,
        payUCheckoutProConfig: payUCheckoutProConfig,
      );
    } catch (e) {
      log('PayU exception: $e');
      final resp = {'type': 'exception', 'message': e.toString()};
      if (!_result.isCompleted) _result.complete(resp);
      if (mounted) Navigator.of(context).pop(resp);
    }
  }

  @override
  void generateHash(Map response) {
    String pick(String keyConst, String keyRaw) {
      final v = response[keyConst] ?? response[keyRaw];
      return (v ?? '').toString();
    }

    final hashName = pick(PayUHashConstantsKeys.hashName, 'hashName');
    final hashString = pick(PayUHashConstantsKeys.hashString, 'hashString');
    final hashType = pick(PayUHashConstantsKeys.hashType, 'hashType');
    final postSalt =
        (response[PayUHashConstantsKeys.postSalt] ?? response['postSalt'])
            ?.toString();

    String hash;
    if (hashType == 'V2') {
      hash = _hmacSha256(hashString, payUSalt);
    } else if (hashName == 'mcpLookup') {
      hash = _hmacSha1(hashString, payUSalt);
    } else if (postSalt != null && postSalt.isNotEmpty) {
      hash = _sha512('$hashString$payUSalt$postSalt');
    } else {
      hash = _sha512('$hashString$payUSalt');
    }

    _checkoutPro.hashGenerated(hash: <String, dynamic>{hashName: hash});
  }

  String _sha512(String input) {
    final bytes = utf8.encode(input);
    return sha512.convert(bytes).toString();
  }

  String _hmacSha256(String input, String key) {
    final hmac = Hmac(sha256, utf8.encode(key));
    return hmac.convert(utf8.encode(input)).toString();
  }

  String _hmacSha1(String input, String key) {
    final hmac = Hmac(sha1, utf8.encode(key));
    return hmac.convert(utf8.encode(input)).toString();
  }

  @override
  void onPaymentSuccess(dynamic response) {
    log('PayU Payment Success: $response');
    final normalized = _normalizeSdkCallback(response);
    final map = {'type': 'success', 'response': normalized};
    if (!_result.isCompleted) _result.complete(map);
    if (mounted) Navigator.of(context).pop(map);
  }

  @override
  void onPaymentFailure(dynamic response) {
    log('PayU Payment Failure: $response');
    final normalized = _normalizeSdkCallback(response);
    final map = {'type': 'failure', 'response': normalized};
    if (!_result.isCompleted) _result.complete(map);
    if (mounted) Navigator.of(context).pop(map);
  }

  @override
  void onPaymentCancel(Map? response) {
    log('PayU Payment Cancelled: $response');
    final map = {'type': 'cancel', 'response': response};
    if (!_result.isCompleted) _result.complete(map);
    if (mounted) Navigator.of(context).pop(map);
  }

  @override
  void onError(Map? response) {
    log('PayU Error: $response');
    final map = {'type': 'error', 'response': response};
    if (!_result.isCompleted) _result.complete(map);
    if (mounted) Navigator.of(context).pop(map);
  }

  Map<String, dynamic> _normalizeSdkCallback(dynamic response) {
    if (response is! Map) return {'raw': response};
    final base = Map<String, dynamic>.from(response);
    final raw = base['payuResponse'];

    if (raw is String && raw.trim().startsWith('{')) {
      try {
        return Map<String, dynamic>.from(jsonDecode(raw) as Map);
      } catch (_) {}
    }
    if (raw is Map) return Map<String, dynamic>.from(raw);
    return base;
  }

  @override
  Widget build(BuildContext context) {
    // Return a shrinked box because the SDK opens its own UI
    return const SizedBox.shrink();
  }
}

/*
class _PayUWebViewScreen extends StatefulWidget {
  const _PayUWebViewScreen({required this.payuData});

  final Map<String, dynamic> payuData;

  @override
  State<_PayUWebViewScreen> createState() => _PayUWebViewScreenState();
}

class _PayUWebViewScreenState extends State<_PayUWebViewScreen> {
  late final WebViewController _controller;
  bool _loading = true;
  final List<String> _navHistory = <String>[];
  bool _completed = false;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) => setState(() => _loading = true),
          onPageFinished: (url) async {
            setState(() => _loading = false);
            await _tryCaptureCallback(url);
          },
          onNavigationRequest: (req) async {
            final url = req.url;
            _tryCaptureCallback(url);

            // Handle payment deep links (UPI, Wallets, etc.)
            if (!url.startsWith('http://') && !url.startsWith('https://')) {
              try {
                final uri = Uri.parse(url);
                final launched = await launchUrl(
                  uri,
                  mode: LaunchMode.externalApplication,
                );
                if (!launched) {
                  debugPrint('No app found to handle scheme: $url');
                }
              } catch (e) {
                debugPrint('Error launching deep link: $e');
              }
              return NavigationDecision.prevent;
            }

            return NavigationDecision.navigate;
          },
          onWebResourceError: (error) {
            _tryCaptureCallback(error.url ?? '');
          },
        ),
      )
      ..loadHtmlString(_buildAutoSubmitHtml(widget.payuData));
  }

  Future<void> _tryCaptureCallback(String url) async {
    _navHistory.add(url);
    if (_navHistory.length > 10) _navHistory.removeAt(0);

    final surl = (widget.payuData['surl'] ?? '').toString();
    final furl = (widget.payuData['furl'] ?? '').toString();

    final isCallbackUrl = (surl.isNotEmpty &&
            (url.startsWith(surl) || url.contains(surl.split('?')[0]))) ||
        (furl.isNotEmpty &&
            (url.startsWith(furl) || url.contains(furl.split('?')[0]))) ||
        url.contains('payment-success') ||
        url.contains('payment-failure') ||
        url.contains('success-response') ||
        url.contains('update-coins-after-payment');

    if (!isCallbackUrl) return;
    if (_completed) return;
    _completed = true;

    if (mounted) {
      Navigator.of(context).pop(<String, dynamic>{
        'type': 'webviewCallback',
        'url': url,
        'success': url.startsWith(surl) ||
            url.contains('success') ||
            url.contains('update-coins-after-payment'),
      });
    }
  }

  String _buildAutoSubmitHtml(Map<String, dynamic> payuData) {
    final paymentUrl = payUPaymentUrl;

    final inputs = payuData.entries.where((e) => e.value != null).map((e) {
      final k = _htmlEscape(e.key);
      final v = _htmlEscape(e.value.toString());
      return '<input type="hidden" name="$k" value="$v" />';
    }).join('\n');

    return '''
<!doctype html>
<html>
  <head><meta name="viewport" content="width=device-width, initial-scale=1.0" /></head>
  <body>
    <form id="payuForm" method="post" action="$paymentUrl">
      $inputs
    </form>
    <script>document.getElementById('payuForm').submit();</script>
  </body>
</html>
''';
  }

  String _htmlEscape(String input) {
    return input
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#39;');
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        if (mounted) {
          Navigator.of(context)
              .pop({'type': 'cancel', 'message': 'User closed payment screen'});
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PayU Payment'),
        ),
        body: Stack(
          children: [
            WebViewWidget(controller: _controller),
            if (_loading) const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
*/
