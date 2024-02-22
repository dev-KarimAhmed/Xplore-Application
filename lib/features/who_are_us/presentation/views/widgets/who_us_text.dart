import 'package:flutter/material.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/authentication/presentation/views/widgets/login_form.dart';

class WhoUsText extends StatelessWidget {
  const WhoUsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          textDirection: TextDirection.rtl,
          '''اكسبلور هي شركة متخصصة فى تقديم محتوي  دراسي 
مرئي لجميع المناهج  التعليمية فى جمهورية مصر العربية''',
          style: Styles.textUserName.copyWith(height: 2),
        ),
        CustomDivider(),
        Text(
          textDirection: TextDirection.rtl,
          '''جميع ما تنتجة الشركة من محاضرات ومحتوي مكتوب 
    واسئلة هي مملوكة للشركة ولا يجوز  استعمالها فى 
    اي اغراض خاصة''',
          style: Styles.textUserName.copyWith(height: 2),
        ),
        CustomDivider(),
        Text(
          textDirection: TextDirection.rtl,
          '''الدروس من اعداد وتقديم مجموع من المعلمين المتميزين
    فى المواد الى يتم التقديم فيها''',
          style: Styles.textUserName.copyWith(height: 2),
        ),
        CustomDivider(),
      ],
    );
  }
}
