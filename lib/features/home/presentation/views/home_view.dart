import 'package:flutter/material.dart';
import 'package:xplore/features/home/presentation/views/widgets/home_viewbody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
