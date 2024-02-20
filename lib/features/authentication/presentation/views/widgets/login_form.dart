import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/functions/navigation_functions.dart';
import 'package:xplore/features/authentication/presentation/views/forgot_password_view.dart';
import 'package:xplore/features/authentication/presentation/views/register_view.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textaction.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textbtn.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textfield.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/with_google_btn.dart';
import 'package:xplore/features/home/presentation/views/home_view.dart';

class LoginViewForm extends StatelessWidget {
  const LoginViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
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
          onPressed: () {
            navigateTo(context, const HomeView());
            // Navigator.pushReplacement(
            //     context, MaterialPageRoute(builder: (context) => HomeView()));
          },
          text: 'دخول',
        ),
        const SizedBox(
          height: 8,
        ),
        WithGoogleBtn(
          onTap: () {},
          data: 'تسجيل دخول باستخدام جوجل',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomAction(
          textNormal: ' إذا كانت أول مرة لك في استخدام التطبيق',
          textBtn: 'إنشاء حساب ',
          onTap: () {
            navigateTo(context, const RegisterView());
          },
        ),
        const SizedBox(
          height: 8,
        ),
        const CustomDivider(),
        const SizedBox(
          height: 8,
        ),
        CustomTextButton(
          onTap: () {
            navigateTo(context, ForgotPasswordView());
          },
          text: 'هل نسيت كلمة المرور؟',
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
