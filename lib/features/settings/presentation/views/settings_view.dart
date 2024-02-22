import 'package:flutter/material.dart';
import 'package:xplore/core/utils/components/drawer_header.dart';
import 'package:xplore/core/utils/components/drawer_tile.dart';
import 'package:xplore/core/utils/functions/build_custom_drawer_appbar.dart';
import 'package:xplore/core/utils/functions/build_custom_linear.dart';
import 'package:xplore/features/settings/presentation/views/widgets/settings_view_body.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customDrawerAppBar(title: 'الاعدادات'),
      body: SettingsViewBody(),
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
                        Navigator.pop(context);
                      },
                    ),
                    CustomListTile(
                      icon: Icons.settings,
                      title: 'الاعدادات',
                      isSameView: true,
                    ),
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
            ],
          ),
        ),
      ),
    );
  }
}
