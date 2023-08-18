import 'package:flutter/material.dart';
import 'package:riide/modules/booking_flow/promo_code.dart';
import 'package:riide/modules/messaging/messages_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/form_fields.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/common_background.dart';

class MessageRoomScreen extends StatefulWidget {
  const MessageRoomScreen({super.key});

  @override
  State<MessageRoomScreen> createState() => _MessageRoomScreenState();
}

class _MessageRoomScreenState extends State<MessageRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              const SizedBox(
                width: double.infinity,
                height: double.infinity,
              ),
              const SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CustomersList(),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Container(
                      color: Colors.black.withOpacity(.95),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FirstIcon(
                            onTap: () => Navigator.pop(context),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/Avatar.png'),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap:() {
                              navigateTo(context, const PromoCodeScreen());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const HeadLine(
                                  headline: 'Osama M. Elngar',
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const HintLine(hintLine: 'Active now'),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: AppColors.appColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: AppColors.appGrey,
                      height: 1,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  color: Colors.black.withOpacity(.91),
                  padding: const EdgeInsets.only(top: 5),
                  child: const AppTFF(hint: 'Send message'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
