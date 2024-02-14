import 'package:flutter/material.dart';
import 'package:xplore/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Xplore());
}

class Xplore extends StatelessWidget {
  const Xplore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xplore',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}
