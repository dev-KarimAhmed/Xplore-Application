import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xplore/constants.dart';
import 'package:xplore/core/utils/assets.dart';
import 'package:xplore/core/utils/functions/build_custom_drawer_appbar.dart';
import 'package:xplore/core/utils/stlyes.dart';
import 'package:xplore/features/home/presentation/views/widgets/home_viewbody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDrawerAppBar(title: 'الصفحة الرئيسية'),
      body: HomeViewBody(),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width * .65,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: buildCustomGradient(),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  DrawerHeader(),
                  SizedBox(
                    height: 20,
                  ),
                  CustomListTile(
                    icon: Icons.home,
                    title: 'الصفحة الرئيسية',
                    isSameView: true,
                  ),
                  CustomListTile(icon: Icons.settings, title: 'الاعدادات'),
                  CustomListTile(icon: Icons.share, title: 'مشاركة التطبيق'),
                  CustomListTile(icon: Icons.thumb_up_alt, title: 'تقييم التطبيق'),
                  CustomListTile(icon: Icons.info, title: 'من نحن'),
                  CustomListTile(
                      icon: Icons.phone_in_talk, title: 'تواصل معنا'),
                  CustomListTile(icon: Icons.logout, title: 'تسجيل الخروج'),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  LinearGradient buildCustomGradient() {
    return LinearGradient(
      colors: [
        kBackgroundSplashColor,
        Color(0xff1F3E87),
      ],
      end: Alignment.topRight,
      begin: Alignment.bottomLeft,
    );
  }
}

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
        style: Styles.textUserName.copyWith(fontSize: 18),
      ),
      trailing: Icon(
        icon,
        color: kuserName,
      ),
      onTap: isSameView ? () => Navigator.pop(context) : onTap,
    );
  }
}

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({
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

class userInfo extends StatelessWidget {
  const userInfo({
    super.key,
    this.fontWeight,
    this.fontSize,
  });
  final FontWeight? fontWeight;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCircleAvatar(),
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
