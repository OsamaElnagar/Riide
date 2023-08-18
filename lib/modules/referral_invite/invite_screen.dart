import 'package:flutter/material.dart';
import 'package:riide/modules/settings_notifications/share_invite_screen.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/form_fields.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/app_button.dart';
import 'package:riide/shared/widgets/common_background.dart';

import '../../shared/components/components.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonMapBackground(
        onTap: () => Navigator.pop(context),
        label: 'Invite Friends',
        children: [
          Expanded(
              child: Container(
            color: Colors.black,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(AppAssets.artWork),
                  const SizedBox(height: 10),
                  const HeadLine(
                    headline: 'Invite Friends',
                    fs: 30,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: const HeadLine(
                      headline:
                          'Sign up a friend with your referral code and earn '
                          '\$RIIDE and/or free rides.',
                      maxLines: 2,
                      fw: FontWeight.w400,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.bottomSheetItem,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const AppTFF(hint: 'Share your invite code..'),
                          const SizedBox(
                            height: 10,
                          ),
                          CommonButton(
                            text: 'Invite Friends',
                            onTap: () {
                              navigateTo(context, const ShareInviteScreen());
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
