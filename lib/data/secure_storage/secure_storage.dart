import 'dart:developer';

import 'package:bechdu_partner/domain/model/token/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static const String accessKey = 'access_key';
  static const String isLogged = 'is_loggedIn';
  static const String isPartnerKey = 'is_partner';
  static const String phoneKey = 'phone_key';
  static const String notificationKey = 'notification_key';
  static const String orderSoundKey = 'order_sound_key';
  static const String defaultOrderSound = 'order_alarm';

  static Future<SharedPreferences> _getPrefs() async =>
      await SharedPreferences.getInstance();

  static Future<void> saveToken({required TokenModel tokenModel}) async {
    log('save token =>() ${tokenModel.accessToken}');
    final preferences = await _getPrefs();
    await preferences.setString(accessKey, tokenModel.accessToken ?? '');
  }

  static Future<TokenModel> getToken() async {
    log('get token =>()');
    final preferences = await _getPrefs();
    final accessToken = preferences.getString(accessKey);
    return TokenModel(accessToken: accessToken);
  }

  static Future<void> setLogin() async {
    log('set login =>()');
    final preferences = await _getPrefs();
    await preferences.setBool(isLogged, true);
    await preferences.setInt(notificationKey, 0);
  }

  static Future<void> clearLogin() async {
    log('delete all secureStorage =>()');
    final preferences = await _getPrefs();
    await preferences.clear();
  }

  static Future<bool> getLogin() async {
    log('get login =>()');
    final preferences = await _getPrefs();
    final login = preferences.getBool(isLogged) ?? false;
    log('get login =>() $login');
    return login;
  }

  static Future<void> setRole({required bool isPartner}) async {
    log('set isBusiness token =>() $isPartner');
    final preferences = await _getPrefs();
    await preferences.setBool(isPartnerKey, isPartner);
  }

  static Future<bool> getRole() async {
    final preferences = await _getPrefs();
    final role = preferences.getBool(isPartnerKey) ?? false;
    return role;
  }

  static Future<void> setNotification({required int length}) async {
    final preferences = await _getPrefs();
    await preferences.setInt(notificationKey, length);
  }

  static Future<int> getNotification() async {
    final preferences = await _getPrefs();
    final noti = preferences.getInt(notificationKey) ?? 0;
    return noti;
  }

  static Future<void> setPhone({required String phone}) async {
    log('set phone =>() $phone');
    final preferences = await _getPrefs();
    await preferences.setString(phoneKey, phone);
  }

  static Future<String?> getPhone() async {
    final preferences = await _getPrefs();
    final phone = preferences.getString(phoneKey);
    return phone;
  }

  static Future<void> setOrderSound({required String sound}) async {
    log('set orderSound =>() $sound');
    final preferences = await _getPrefs();
    await preferences.setString(orderSoundKey, sound);
  }

  static Future<String> getOrderSound() async {
    final preferences = await _getPrefs();
    final sound = preferences.getString(orderSoundKey) ?? defaultOrderSound;
    return sound;
  }
}
