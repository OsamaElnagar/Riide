import 'package:flutter/material.dart';
import 'package:riide/modules/referral_invite/invite_screen.dart';
import 'package:riide/modules/settings_notifications/my_account.dart';
import 'package:riide/modules/settings_notifications/settings_screen.dart';
import 'package:riide/shared/widgets/common_background.dart';

import '../../shared/components/components.dart';
import '../../shared/styles/assets.dart';
import '../../shared/styles/colors.dart';
import '../../shared/styles/texts.dart';
import 'history_screen.dart';
import 'notifications_screen.dart';

class HomeSettings extends StatelessWidget {
  const HomeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            OpacityImage(
              opacity: .8,
              assetName: AppAssets.mapsicleMap,
              height: double.infinity,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .27,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FirstIcon(
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const CircleAvatar(
                          radius: 43,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/Avatar.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width:130,
                              child: HeadLine(
                                headline: 'Osama M. Elngar ',
                                maxLines: 2,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.amber,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                HeadLine(headline: '5'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.8),
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 60),
                          SettingItem(
                            onTap: () {
                              navigateTo(context, const MyAccountScreen());
                            },
                            title: 'My Account',
                            icon: Icons.home_rounded,
                            color: AppColors.appColor,
                          ),
                          SettingItem(
                            onTap: () {

                            },
                            title: 'My Wallet',
                            icon: Icons.wallet,
                            color: Colors.green,
                          ),
                          SettingItem(
                            onTap: () {
                              navigateTo(context, const HistoryScreen());
                            },
                            title: 'History',
                            icon: Icons.history,
                            color: Colors.brown,
                          ),
                          SettingItem(
                            onTap: () {
                              navigateTo(context, const NotificationsScreen());
                            },
                            title: 'Notifications',
                            icon: Icons.notifications,
                            color: AppColors.bo,
                          ),
                          SettingItem(
                            onTap: () {
                              navigateTo(context, const InviteFriendsScreen());
                            },
                            title: 'Invite Friends',
                            icon: Icons.card_giftcard,
                            color: Colors.pinkAccent,
                          ),
                          SettingItem(
                            onTap: () {
                              navigateTo(context, const SettingsScreen());
                            },
                            title: 'Settings',
                            icon: Icons.settings,
                            color:Colors.white,
                          ),
                          SettingItem(
                            onTap: () {},
                            title: 'Logout',
                            icon: Icons.logout,
                            color:Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.bottomSheetItem,
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              width: 50,
              height: 80,
              child: Icon(
                icon,
                color: color,
                size: 35,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            HeadLine(
              headline: title,
            ),
          ],
        ),
      ),
    );
  }
}
