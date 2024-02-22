  import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';

LinearGradient buildCustomGradient() {
    return LinearGradient(
      colors: [
        kBackgroundSplashColor,
        Color(0xff1F3E87),
      ],
      end: Alignment.topRight,
      begin: Alignment.bottomLeft,
    );
  }

