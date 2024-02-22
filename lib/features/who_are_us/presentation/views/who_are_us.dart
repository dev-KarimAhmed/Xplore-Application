import 'package:flutter/material.dart';
import 'package:xplore/core/utils/components/drawer_header.dart';
import 'package:xplore/core/utils/components/drawer_tile.dart';
import 'package:xplore/core/utils/functions/build_custom_drawer_appbar.dart';
import 'package:xplore/core/utils/functions/build_custom_linear.dart';
import 'package:xplore/features/home/presentation/views/home_view.dart';
import 'package:xplore/features/settings/presentation/views/settings_view.dart';
import 'package:xplore/features/who_are_us/presentation/views/widgets/who_are_us.dart';

class WhoAreUS extends StatelessWidget {
  const WhoAreUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDrawerAppBar(title: 'من نحن'),
      body: WhoAreUSBody(),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width * .65,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
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
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeView()));
                      },
                    ),
                    CustomListTile(
                        icon: Icons.settings,
                        title: 'الاعدادات',
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsView()));
                        }),
                    CustomListTile(icon: Icons.share, title: 'مشاركة التطبيق'),
                    CustomListTile(
                        icon: Icons.thumb_up_alt, title: 'تقييم التطبيق'),
                    CustomListTile(
                      icon: Icons.info,
                      title: 'من نحن',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    CustomListTile(
                        icon: Icons.phone_in_talk, title: 'تواصل معنا'),
                    CustomListTile(icon: Icons.logout, title: 'تسجيل الخروج'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
