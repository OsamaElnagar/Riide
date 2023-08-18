import 'package:flutter/material.dart';
import 'package:riide/shared/widgets/common_background.dart';
import '../../shared/widgets/settings_widgets/settings_item_builder.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CommonMapBackground(
          onTap: () => Navigator.pop(context),
          label: 'Notifications',
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.black,
                child:  SingleChildScrollView(
                  child : Column(
                    children: [
                      const SizedBox(height: 30,),
                      SettingsItem(
                        callback: () {},
                        icon: Icons.yard,
                        title: 'System',
                        hint: 'Gold Member',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.red,
                        icon: Icons.person_3_rounded,
                        title: 'Promotion',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        icon: Icons.yard,
                        title: 'System',
                        hint: 'Gold Member',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.red,
                        icon: Icons.person_3_rounded,
                        title: 'Promotion',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        icon: Icons.yard,
                        title: 'System',
                        hint: 'Gold Member',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.red,
                        icon: Icons.person_3_rounded,
                        title: 'Promotion',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        icon: Icons.yard,
                        title: 'System',
                        hint: 'Gold Member',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.red,
                        icon: Icons.person_3_rounded,
                        title: 'Promotion',
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