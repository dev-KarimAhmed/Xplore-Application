import 'package:flutter/material.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/register_view_form.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

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
            Text('التسجيل', style: Styles.textStyle28),
            const SizedBox(
              height: 20,
            ),
            const RegisterViewForm(),
          ],
        ),
      ),
    );
  }
}
