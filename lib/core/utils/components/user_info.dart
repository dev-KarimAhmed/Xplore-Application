import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/stlyes.dart';

class userInfo extends StatelessWidget {
  const userInfo({
    super.key,
    this.fontWeight,
    this.fontSize, this.radius,
  });
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCircleAvatar(radius: radius),
        SizedBox(height: 10),
        Text(
          'User Name',
          style: Styles.textUserName
              .copyWith(fontWeight: fontWeight, fontSize: fontSize),
        ),
      ],
    );
  }
}


class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    this.radius,
  });
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 50,
      backgroundColor: kuserName,
      child: Image.asset(AssetsData.person),
    );
  }
}
