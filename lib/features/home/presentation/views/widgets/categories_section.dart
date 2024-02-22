import 'package:flutter/material.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/features/home/presentation/views/widgets/custom_category_circle.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: 110,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kuserName,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomCategoryCircle(title: 'ثانوي'),
          CustomCategoryCircle(title: 'إعدادي'),
          CustomCategoryCircle(title: 'إبتدائي'),
        ],
      ),
    );
  }
}
