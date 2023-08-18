import 'package:flutter/material.dart';
import 'package:riide/shared/widgets/common_background.dart';

import '../../shared/widgets/settings_widgets/settings_item_builder.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CommonMapBackground(
          onTap: () => Navigator.pop(context),
          label: 'Settings',
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.black,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      SettingsItem(
                        callback: () {},
                        icon: Icons.notifications,
                        title: 'Notifications',
                        hint:
                            'Your booking #1234 has been successfully scheduled',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.red,
                        icon: Icons.security,
                        title: 'Security',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.green,
                        icon: Icons.security,
                        title: 'Language',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.pink,
                        icon: Icons.security,
                        title: 'Clear Cache',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.white,
                        icon: Icons.security,
                        title: 'Terms & Conditions',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.cyan,
                        icon: Icons.contact_page_outlined,
                        title: 'Connect us',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
