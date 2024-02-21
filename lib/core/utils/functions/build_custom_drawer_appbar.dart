  import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/stlyes.dart';

AppBar customDrawerAppBar({required String title}) {
    return AppBar(
      title: Text(
        title,
        style: Styles.textGoldStyle,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(
        color: kGoldColor, // Change the color of the icon
        size: 36, // Change the size of the icon
      ),
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff1F3E87),
              Color(0xff1F3E87),
              Color(0xff1F3E87),
              Color.fromARGB(255, 26, 55, 120),
              // kBackgroundSplashColor,
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
      ),
    );
  }
