import 'package:flutter/material.dart';
import 'package:riide/modules/booking_flow/promo_code.dart';
import 'package:riide/modules/service_review/tips_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/form_fields.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/app_button.dart';
import '../../shared/widgets/service_review_and_payment/service_payment.dart';
import '../../shared/widgets/service_review_and_payment/stars_rating.dart';


class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RatingAndPaymentBackground(
          onTap: () => navigateToAndRemoveAllLTR(context, const PromoCodeScreen()),
          label: 'Rating',
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
                              headline: 'How was your trip?',
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
                                    'Your feedback will help improving driving experience',
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            StarRating(
                              maxRating: 5,
                              currentRating: 3,
                              onChanged: (newRating) {},
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const AppTFF(hint: 'Additional comments...'),

                            const SizedBox(
                              height: 55,
                            ),  ],
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
                        navigateTo(context, const TipsScreen());
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
