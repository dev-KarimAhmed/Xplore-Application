import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/functions/navigation_functions.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/log_in_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    goToHome();
  }

  void goToHome() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      navigateTo(context, const LoginView());

      // Get.to(const HomeView(),
      //     transition: Transition.fadeIn, duration: kTransitionDuration);
    });
  }

  @override
  void dispose() {
    // Dispose of the animation controller
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            kPrimaryColor,
            kSecondaryColor,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
              image: AssetImage(AssetsData.logo),
              height: 200,
            ),
            const SizedBox(
              height: 8,
            ),
            SlidingAnimationText(slidingAnimation: slidingAnimation),
          ],
        ),
      ),
    );
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    // Start the animation
    animationController.forward();
  }
}

class SlidingAnimationText extends StatelessWidget {
  const SlidingAnimationText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'A Place Helps You To Learn',
            textAlign: TextAlign.center,
            style: Styles.textStyle18,
          ),
        );
      },
    );
  }
}
