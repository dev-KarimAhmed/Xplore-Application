import 'package:flutter/material.dart';
import 'package:xplore/features/start_point/presentation/views/widgets/start_view_body.dart';

class StartPointView extends StatelessWidget {
  const StartPointView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StartPointViewBody(),
    );
  }
}

