import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/components/user_info.dart';
import 'package:xplore/core/utils/components/app_use_guide_section.dart';
import 'package:xplore/features/home/presentation/views/widgets/categories_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kBackgroundSplashColor,
            Color(0xff1F3E87),
          ],
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
        ),
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 20),
              userInfo(
                radius: 60,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 40),
              CategoriesSection(),
              SizedBox(height: 60),
              AppUseGuidBox(),
            ],
          ),
        ),
      ),
    );
  }
}
