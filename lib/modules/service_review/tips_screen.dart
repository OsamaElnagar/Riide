import 'package:flutter/material.dart';
import 'package:riide/modules/payment/my_wallet.dart';
import 'package:riide/modules/service_review/rating_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/app_button.dart';
import '../../shared/widgets/service_review_and_payment/amount_picker.dart';
import '../../shared/widgets/service_review_and_payment/service_payment.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RatingAndPaymentBackground(
          onTap: () => navigateToLTR(context, const RatingScreen()),
          twoCircles: false,
          label: 'Tips',
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const HeadLine(
                              headline: 'Gregory Smith',
                              fs: 16,
                              fw: FontWeight.w400,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const HintLine(hintLine: '652 - UKW'),
                            const SizedBox(
                              height: 25,
                            ),
                            const HeadLine(
                              headline: 'Tips',
                              fs: 22,
                              fw: FontWeight.w700,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const SizedBox(
                              width: 250,
                              child: HintLine(
                                maxLines: 2,
                                hintLine:
                                    'Would you like to tip your driver/courier?',
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            ////////////////////////////////
                            InkWell(
                              onTap: () {},
                              child:
                                  const HintLine(hintLine: 'Maybe next time'),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const HeadLine(
                                  headline: "Choose custom amount?"),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const AmountPicker(),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 20,
                    left: 20,
                    child: CommonButton(
                      text: 'Confirm',
                      onTap: () {
                        navigateToAndRemoveAllRTL(
                            context, const MyWalletScreen());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
