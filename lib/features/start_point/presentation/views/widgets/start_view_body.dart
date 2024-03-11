import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/functions/greeting_time.dart';
import 'package:xplore/core/utils/functions/navigation_functions.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/log_in_view.dart';
import 'package:xplore/features/authentication/presentation/views/register_view.dart';
import 'package:xplore/features/start_point/presentation/views/widgets/custom_elevated_btn.dart';

class StartPointViewBody extends StatelessWidget {
  const StartPointViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image(image: AssetImage(AssetsData.startPoint)),
              Column(
                children: [
                  Text(
                    greetingTime(),
                    style: Styles.maintTextStyle.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "رحلتك نحو العلم، قصة نجاح تكتب بإيدينا",
                    style: Styles.maintTextStyle.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'أكبر منصة تعليمية في مصر',
                    style: Styles.maintTextStyle.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomElevatedButton(
                    text: 'دخول إلى حسابي',
                    backgroundColor: kPrimaryColor,
                    onPressed: () {
                      navigateTo(context, LoginView());
                    },
                  ),
                  SizedBox(height: 20), // Adding space between buttons
                  CustomElevatedButton(
                    text: 'فتح حساب جديد',
                    backgroundColor: kSecondaryColor,
                    onPressed: () {
                      navigateTo(context, RegisterView());
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
