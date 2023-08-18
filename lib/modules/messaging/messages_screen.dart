import 'package:flutter/material.dart';
import 'package:riide/modules/messaging/message_room_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/form_fields.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/common_background.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CommonMapBackground(
          onTap: () {
            Navigator.pop(context);
          },
          label: 'Messaging',
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                child:  SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.0, left: 5),
                    child: Column(
                      children: [
                         const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: AppTFF(hint: 'Search here', action: TextInputAction.go),
                        ),
                        const SizedBox(height: 15),
                        CustomersList(
                          onTap: () => navigateTo(context, const MessageRoomScreen()),
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

class CustomersList extends StatelessWidget {
  const CustomersList({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>  CustomerMessageItem(
          onTap: onTap,
          name: 'Osama Mohammed elngar',
          hintMessage:
              'Where hare you been all yesterday night!! Where hare you been all yesterday night!!',
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: 10,
      ),
    );
  }
}

class CustomerMessageItem extends StatelessWidget {
  const CustomerMessageItem({
    super.key,
    required this.name,
    required this.hintMessage, this.onTap,
  });

  final String name;
  final String hintMessage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(AppAssets.avatar),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .02),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 145,
                        child: HeadLine(
                          align: TextAlign.start,
                          headline: name,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: SizedBox(
                          child: HintLine(hintLine: hintMessage),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              width: MediaQuery.of(context).size.width * .25,
              child: const HintLine(
                hintLine: '15/8/2023',
              ),
            )
          ],
        ),
      ),
    );
  }
}
