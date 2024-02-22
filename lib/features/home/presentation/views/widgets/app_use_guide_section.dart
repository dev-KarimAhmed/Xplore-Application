import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/stlyes.dart';

class AppUseGuidBox extends StatelessWidget {
  const AppUseGuidBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: 50,
      margin: const EdgeInsets.all(20),
      child: Card(
        elevation: 5,
        color: Color(0xff192D62),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: kuserName, width: 1),
        ),
        child: Center(
          child: Text(
            'تعلم كيف تستخدم التطبيق',
            style: Styles.textUserName
                .copyWith(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

