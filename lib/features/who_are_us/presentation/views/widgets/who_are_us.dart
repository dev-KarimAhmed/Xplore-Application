import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/components/app_use_guide_section.dart';
import 'package:xplore/features/who_are_us/presentation/views/widgets/who_us_text.dart';

class WhoAreUSBody extends StatelessWidget {
  const WhoAreUSBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
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
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(
                      AssetsData.logo,
                    ),
                    fit: BoxFit.fill,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: WhoUsText(),
              ),
              SizedBox(
                height: 20,
              ),
              AppUseGuidBox(),
            ],
          ),
        ),
      ),
    );
  }
}
