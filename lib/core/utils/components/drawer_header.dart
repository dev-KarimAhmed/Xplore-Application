import 'package:flutter/material.dart';
import 'package:xplore/core/utils/components/user_info.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: userInfo(),
    );
  }
}
