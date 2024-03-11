import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/stlyes.dart';

class WithGoogleBtn extends StatelessWidget {
  const WithGoogleBtn({
    super.key,
    this.onTap,
    required this.data,
  });

  final void Function()? onTap;
  final String data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: 40,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              AssetsData.google,
              width: 30,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              data,
              style: Styles.maintTextStyle
                  .copyWith(fontWeight: FontWeight.w200, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
