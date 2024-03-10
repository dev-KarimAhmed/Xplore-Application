import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: RegisterViewBody(),
      ),
    );
  }
}
