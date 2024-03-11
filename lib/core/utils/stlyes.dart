import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';

abstract class Styles {
  static TextStyle maintTextStyle =
      const TextStyle(fontSize: 20, fontFamily: 'Changa', color: kWhiteColor);
  static TextStyle subHeadTextStyle = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w900,
    color: kPrimaryColor,
    fontFamily: 'Changa',
  );
  // static TextStyle hintTextStyle = const TextStyle(
  //   color: kHintTextColor,
  //   fontSize: 18,
  //   fontWeight: FontWeight.w400,
  // );
  // static TextStyle textStyle16 = const TextStyle(
  //   color: Colors.white,
  //   fontSize: 16,
  // );
  // static TextStyle textGoldStyle = const TextStyle(
  //   color: kGoldColor,
  //   fontSize: 23,
  //   fontWeight: FontWeight.bold,
  // );
  // static TextStyle textUserName = const TextStyle(
  //   color: kuserName,
  //   fontSize: 15,
  // );
}
