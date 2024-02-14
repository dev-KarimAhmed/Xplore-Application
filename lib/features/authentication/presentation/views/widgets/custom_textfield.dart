import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/stlyes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.keyboardType,
    this.obscureText = false,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
  });

  final TextInputType? keyboardType;
  final bool obscureText;
  final String hintText;
  final IconData icon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.68,
      child: TextFormField(
        style: const TextStyle(
          color: kBackgroundSplashColor,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'هذا الحقل مطلوب';
          } else {
            return null;
          }
        },
        keyboardType: keyboardType,
        textAlign: TextAlign.center,
        cursorColor: kPrimaryColor,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintTextDirection: TextDirection.rtl,
          fillColor: Colors.white,
          hintStyle: Styles.hintTextStyle,
          filled: true,
          prefixIcon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: suffixIcon,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: kHintTextColor,
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
