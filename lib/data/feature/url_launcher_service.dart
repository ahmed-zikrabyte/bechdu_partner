import 'dart:developer';

import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/application/presentation/utils/snackbar/snack_show.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class OpenLauncherFeature {
  static Future<void> launchMap(
      {required String address, required BuildContext context}) async {
    try {
      url_launcher.launchUrl(Uri.parse(urlMapTest + address));
    } catch (e) {
      log('cannot launch url');
      log(e.toString());
      showSnackBar(
          context: context, message: errorMessage, color: kBluePrimary);
    }
  }

  static Future<void> launchPhone({required String phone}) async {
    if (phone.isEmpty) return;
    try {
      url_launcher.launchUrl(Uri.parse("tel://$phone"));
    } catch (e) {
      log('cannot launch url');
      log(e.toString());
    }
  }

  static Future<void> launchWebPage({required String url}) async {
    if (url.isEmpty) return;
    try {
      url_launcher.launchUrl(Uri.parse(url));
    } catch (e) {
      log('cannot launch url');
      log(e.toString());
    }
  }

  static Future<void> launchEmail({required String email}) async {
    if (email.isEmpty) return;
    try {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: email,
      );
      if (await url_launcher.canLaunchUrl(emailUri)) {
        await url_launcher.launchUrl(emailUri);
      } else {
        throw 'Could not launch email';
      }
    } catch (e) {
      log('cannot launch email');
      log(e.toString());
    }
  }
}
