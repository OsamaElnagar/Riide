import 'package:flutter/material.dart';
import 'package:riide/modules/payment/my_wallet.dart';
import 'package:riide/modules/payment/riide_wallet.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/app_button.dart';

import 'selection_widget.dart';
import 'service_payment.dart';


class PaymentMethodBuilder extends StatelessWidget {
  const PaymentMethodBuilder({super.key, required this.type, required this.amount, required this.title, required this.onTap, required this.onTapBak});

  final String type;
  final String amount;
  final String title;
  final VoidCallback onTap;
  final VoidCallback onTapBak;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RatingAndPaymentBackground(
          onTap: onTapBak,
          twoCircles: false,
          asset1: AppAssets.cash,
          label: 'Payment Method',
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
                             HeadLine(
                              headline: type,
                              fw: FontWeight.w500,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                             HeadLine(
                              headline: amount,
                              color: Colors.white,
                              fs: 25,
                              fw: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                             Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: HeadLine(headline: title),
                            ),
                            SelectionWidget(),
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
                      text: 'Add new method',
                      onTap:onTap,
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


