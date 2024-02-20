import 'package:flutter/material.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/show_toast.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_button.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/custom_textfield.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

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
            Text('اعادة تعيين كلمة المرور', style: Styles.textStyle28),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(
              keyboardType: TextInputType.emailAddress,
              hintText: 'البريد الالكتروني',
              icon: Icons.email,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              width: MediaQuery.of(context).size.width * 0.7,
              onPressed: () {
                Navigator.pop(context);
                showToast('تم ارسال البريد الالكتروني بنجاح');
              },
              text: 'ارسال البريد لاعادة تعيين كلمة السر',
            ),
          ],
        ),
      ),
    );
  }
}
