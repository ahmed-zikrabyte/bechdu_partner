import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

const errorMessage = 'something went wrong, please try again';

const gilroyBold = 'Gilroy-Bold';
const gilroyMedium = 'Gilroy-Medium';
const gilroyRegular = 'Gilroy-Regular';
const gilroySemiBold = 'Gilroy-SemiBold';

const iconBechdu = 'assets/images/bechdu_logo.png';
const splashImage = 'assets/images/partner spash screen.png';

const gifNoData = 'assets/images/Mobile Marketing (2).gif';

const iconPhone = 'assets/images/phone bechdu.png';
const iconLocation = 'assets/images/Subtract.png';

const loginPageImage = 'assets/images/login_page.png';
const imageDiffectedPhone = 'assets/images/diffectImage.png';
const iconHome = 'assets/images/carbon_home.png';
const iconSettings = 'assets/images/solar_settings-linear.png';
const iconPeople = 'assets/images/octicon_people-16.png';
const iconMoney = 'assets/images/ph_money-fill.png';
const iconPickHand = 'assets/images/pick2 2.png';
const iconNottoCoin = 'assets/images/noto_coin.png';
const iconCancel = 'assets/images/cancel.png';
const iconShedule = 'assets/images/calender_shedule.png';
const iconRedo = 'assets/images/redo.png';
const iconCompleteCheck = 'assets/images/check_completed.png';
const phoneImage = 'assets/images/Rectangle 1785.png';
const phoneImageNetwork =
    'https://rukminim2.flixcart.com/image/416/416/kg8avm80/mobile/y/7/n/apple-iphone-12-dummyapplefsn-original-imafwg8dpyjvgg3j.jpeg?q=70&crop=false';
const urlMapTest = 'https://www.google.com/maps?q=';

const String termsAndConditions = 'https://bechdu.in/about-us';
const String privacyPolicy = 'https://bechdu.in/partner/privacy-policy';

double sHeight = 900;
double sWidth = 400;

// for entire app conversion from partner to pickup guy
late bool partner;
const kEmpty = SizedBox();

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight40 = SizedBox(height: 40);
const kHeight50 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

final kRadius5 = BorderRadius.circular(5);
final kRadius10 = BorderRadius.circular(10);
final kRadius15 = BorderRadius.circular(15);
final kRadius50 = BorderRadius.circular(50);

final textHeadBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadBoldBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadBoldBig2 = TextStyle(
  color: kBlack,
  fontFamily: gilroyBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.07 : sWidth * 0.055,
);

final textHeadMedium1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadMediumBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyMedium,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadRegular1 = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

final textHeadRegular2 = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.050 : sWidth * 0.040,
);

final textHeadRegularBig = TextStyle(
  color: kBlack,
  fontFamily: gilroyRegular,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.056 : sWidth * 0.045,
);

final textHeadSemiBold1 = TextStyle(
  color: kBlack,
  fontFamily: gilroySemiBold,
  fontWeight: FontWeight.w400,
  fontSize: sWidth < 400 ? sWidth * 0.040 : sWidth * 0.035,
);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height > 900 ? 900 : size.height;
  sWidth = size.width > 450 ? 450 : size.width;
}

IconData getNotificationIcon(String status) {
  switch (status) {
    case "new":
      return Icons.new_releases_outlined;
    case "cancelled":
      return Icons.close;
    case "Completed":
      return Icons.check;
    case "processing":
      return Icons.restore;
    case "rescheduled":
      return Icons.restore;
    default:
      return Icons.circle;
  }
}

String generateRandomString(int length) {
  const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final random = Random();
  return String.fromCharCodes(Iterable.generate(
      length, (_) => chars.codeUnitAt(random.nextInt(chars.length))));
}
