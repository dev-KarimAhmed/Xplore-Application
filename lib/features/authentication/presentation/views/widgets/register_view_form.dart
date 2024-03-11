import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textaction.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textfield.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/with_google_btn.dart';

class RegisterViewForm extends StatelessWidget {
  const RegisterViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        const CustomTextField(
          keyboardType: TextInputType.name,
          hintText: "الاسم",
          icon: Icons.person,
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomTextField(
          keyboardType: TextInputType.emailAddress,
          hintText: 'البريد الالكتروني',
          icon: Icons.email,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          keyboardType: TextInputType.visiblePassword,
          hintText: 'كلمة المرور',
          icon: Icons.lock,
          obscureText: true,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye,
              color: kPrimaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomButton(
          onPressed: () {},
          width: MediaQuery.of(context).size.width * 0.6,
          text: 'تسجيل',
        ),
        const SizedBox(
          height: 8,
        ),
        WithGoogleBtn(
          onTap: () {},
          data: 'تسجيل حساب باستخدام جوجل',
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomDivider(),
        const SizedBox(
          height: 8,
        ),
        CustomAction(
          mainAxisAlignment: MainAxisAlignment.center,
          textNormal: ' هل لديك حساب؟ ',
          textBtn: 'تسجيل الدخول',
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: kPrimaryColor,
      thickness: 1.5,
      indent: 35,
      endIndent: 35,
    );
  }
}
