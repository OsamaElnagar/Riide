import 'package:flutter/material.dart';

import 'package:riide/shared/styles/form_fields.dart';
import 'package:riide/shared/widgets/common_background.dart';

import '../messaging/messages_screen.dart';

class ShareInviteScreen extends StatelessWidget {
  const ShareInviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CommonMapBackground(
          onTap: () =>  Navigator.pop(context),
          label: 'Invite Friends',
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.0, left: 5),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: AppTFF(
                              hint: 'Search here', action: TextInputAction.go),
                        ),
                        const SizedBox(height: 25),
                        CustomersList(
                          onTap: () {},
                        ),
                      ],
                    ),
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
