import 'package:flutter/material.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textbtn.dart';

class CustomAction extends StatelessWidget {
  const CustomAction(
      {super.key, required this.textBtn, required this.textNormal, this.onTap});
  final String textBtn;
  final String textNormal;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomTextButton(
          onTap: onTap,
          text: textBtn,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          textNormal,
          style: Styles.hintTextStyle
              .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}

