import 'package:flutter/material.dart';

const Color knill = Colors.transparent;
const Color kBlack = Colors.black;
const Color kGreyDark = Color.fromARGB(255, 87, 88, 90);
const Color kGreyLight = Color.fromARGB(255, 150, 154, 164);
const Color kGreyLighter = Color.fromARGB(255, 219, 220, 223);
const Color kWhite = Colors.white;
const Color kGreen = Color.fromARGB(255, 8, 197, 82);
const Color kGreenLight = Color.fromARGB(255, 118, 255, 123);
const Color kGreenPrimary = Color.fromARGB(255, 125, 174, 0);
const Color klightGreen = Color.fromARGB(123, 125, 174, 0);
const Color kBlue = Color.fromARGB(255, 33, 150, 243);
const Color kBluePrimary = Color.fromARGB(255, 23, 80, 118);
const Color kBluelight = Color.fromARGB(125, 186, 227, 255);
const Color kOrangePrimary = Color.fromARGB(255, 211, 130, 0);
const Color kYellowPrimary = Color.fromARGB(255, 255, 193, 7);
const Color kRed = Colors.redAccent;
const Color kRedDark = Color.fromARGB(255, 186, 26, 26);
const Color kRedLight = Color.fromARGB(255, 255, 118, 118);

String getFirstCapital(String? string) {
  if (string == null || string == '') return '';
  return string[0].toUpperCase() + string.substring(1);
}

// Set a default color or choose another color
Color getStatusColor(String status) {
  switch (status) {
    case "new":
      return kBluePrimary;
    case "cancelled":
      return kRed;
    case "Completed":
      return kGreenPrimary;
    case "completed":
      return kGreenPrimary;
    case "processing":
      return kYellowPrimary;
    case "rescheduled":
      return kYellowPrimary;
    case "Announcement":
      return kOrangePrimary;
    default:
      return kBluePrimary;
  }
}

Color getTranscationStatusColor(String status) {
  switch (status) {
    case "Pending":
      return kOrangePrimary;
    case "approved":
      return kGreenPrimary;
    case "rejected":
      return kRedDark;
    default:
      return kBluePrimary;
  }
}

class Solution {
  String largestOddNumber(String num) {
    int index = num.length;
    int b = int.parse(num[--index]);
    while (index >= 0 && b % 2 != 1) {
      if (index == 0) return '';
      b = int.parse(num[--index]);
    }
    return index < 0 ? '' : num.substring(0, index);
  }
}
