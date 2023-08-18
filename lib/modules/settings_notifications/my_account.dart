import 'package:flutter/material.dart';
import 'package:riide/shared/widgets/common_background.dart';
import '../../shared/widgets/settings_widgets/settings_item_builder.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CommonMapBackground(
          onTap: () => Navigator.pop(context),
          label: 'My Account',
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
                        title: 'Level',
                        hint: 'Gold Member',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.red,
                        icon: Icons.person_3_rounded,
                        title: 'Name',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.green,
                        icon: Icons.phone_android_rounded,
                        title: 'Phone Number',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.pink,
                        icon: Icons.email_outlined,
                        title: 'Email',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.white,
                        icon: Icons.type_specimen,
                        title: 'Gender',
                        hint: 'Invite friends - Get 3 coupons each!',
                      ),
                      SettingsItem(
                        callback: () {},
                        color: Colors.cyan,
                        icon: Icons.view_day_rounded,
                        title: 'Birthday',
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