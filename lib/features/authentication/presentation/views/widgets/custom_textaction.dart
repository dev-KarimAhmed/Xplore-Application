import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textbtn.dart';

class CustomAction extends StatelessWidget {
  const CustomAction(
      {super.key,
      required this.textBtn,
      required this.textNormal,
      this.onTap,
      this.mainAxisAlignment = MainAxisAlignment.end});
  final String textBtn;
  final String textNormal;
  final void Function()? onTap;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          CustomTextButton(
            onTap: onTap,
            text: textBtn,
          ),
          Text(
            textNormal,
            style: Styles.maintTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: kPrimaryColor),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
