import 'package:flutter/material.dart';
import 'package:xplore/core/utils/components/drawer_header.dart';
import 'package:xplore/core/utils/components/drawer_tile.dart';
import 'package:xplore/core/utils/functions/build_custom_drawer_appbar.dart';
import 'package:xplore/core/utils/functions/build_custom_linear.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: buildCustomGradient(),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  DrawerHeader(
                    child: CustomDrawerHeader(),
                  ),
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
                  CustomListTile(
                      icon: Icons.thumb_up_alt, title: 'تقييم التطبيق'),
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
}
