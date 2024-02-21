import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          kBackgroundSplashColor,
          Color(0xff1F3E87),
        ],
        end: Alignment.topRight,
        begin: Alignment.bottomLeft,
      )),
    );
  }
}
