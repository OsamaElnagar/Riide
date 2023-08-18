import 'package:flutter/material.dart';

import 'package:riide/shared/widgets/service_review_and_payment/payment_method_builder.dart';

class RiideWalletAddressScreen extends StatelessWidget {
  const RiideWalletAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PaymentMethodBuilder(
      type: '\$Ride',
      amount: '\$15.00',
      title: 'Wallet Address',
      onTap: () {},
      onTapBak: () {
        Navigator.pop(context);
      },
    );
  }
}
