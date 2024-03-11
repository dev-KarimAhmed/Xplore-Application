import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/stlyes.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.isSameView = false,
  });
  final String title;
  final IconData icon;
  final void Function()? onTap;
  final bool isSameView;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        textDirection: TextDirection.rtl,
        title,
        style: Styles.maintTextStyle.copyWith(fontSize: 18),
      ),
      trailing: Icon(
        icon,
        color: kWhiteColor,
      ),
      onTap: isSameView ? () => Navigator.pop(context) : onTap,
    );
  }
}
