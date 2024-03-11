import 'package:flutter/material.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Image(
              image: AssetImage(
                AssetsData.logo,
              ),
              fit: BoxFit.fill,
              height: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            Text('الدخول', style: Styles.subHeadTextStyle),
            const SizedBox(
              height: 20,
            ),
            const LoginViewForm(),
          ],
        ),
      ),
    );
  }
}
