import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/stlyes.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onTap,
    required this.text,
  });

  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textDirection: TextDirection.rtl,
        style: Styles.maintTextStyle.copyWith(
          fontSize: 18,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: kPrimaryColor,
        ),
      ),
    );
  }
}
