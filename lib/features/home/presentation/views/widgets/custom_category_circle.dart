import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/stlyes.dart';

class CustomCategoryCircle extends StatelessWidget {
  const CustomCategoryCircle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 41.5,
      backgroundColor: kGoldColor,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xff20428F),
        child: Text(
          title,
          style: Styles.textGoldStyle.copyWith(fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
