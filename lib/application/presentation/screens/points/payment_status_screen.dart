import 'package:bechdu_partner/application/presentation/routes/routes.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class PaymentStatusScreen extends StatelessWidget {
  final bool isSuccess;
  final String? message;
  final String? txnId;

  const PaymentStatusScreen({
    super.key,
    required this.isSuccess,
    this.message,
    this.txnId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: isSuccess
                        ? Colors.green.withOpacity(0.1)
                        : Colors.red.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isSuccess
                        ? Icons.check_circle_rounded
                        : Icons.error_outline_rounded,
                    color: isSuccess ? Colors.green : Colors.red,
                    size: 100,
                  ),
                ),
                kHeight30,
                Text(
                  isSuccess ? 'Payment Successful!' : 'Payment Failed',
                  style: textHeadBoldBig.copyWith(
                    color: isSuccess ? Colors.green : Colors.red,
                    fontSize: 28,
                  ),
                ),
                kHeight10,
                Text(
                  message ??
                      (isSuccess
                          ? 'Your coins have been added to your wallet.'
                          : 'Something went wrong while processing your payment.'),
                  textAlign: TextAlign.center,
                  style: textHeadMedium1.copyWith(color: kGreyLight),
                ),
                if (txnId != null && txnId!.isNotEmpty) ...[
                  kHeight20,
                  Text(
                    'Transaction ID: $txnId',
                    style: textHeadRegular1.copyWith(color: kGreyLight),
                  ),
                ],
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        Routes.bottomBar,
                        (route) => false,
                      );
                      Navigator.pushNamed(context, Routes.transcationPage);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kBluePrimary,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      isSuccess ? 'View Transactions' : 'Try Again',
                      style: textHeadBold1.copyWith(color: kWhite),
                    ),
                  ),
                ),
                kHeight30,
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      Routes.bottomBar,
                      (route) => false,
                    );
                  },
                  child: Text(
                    'Go to Home',
                    style: textHeadBold1.copyWith(color: kBluePrimary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
