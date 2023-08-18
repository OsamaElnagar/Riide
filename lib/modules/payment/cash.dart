import 'package:flutter/cupertino.dart';
import 'package:riide/shared/widgets/service_review_and_payment/payment_method_builder.dart';

class CashCreditCardScreen extends StatelessWidget {
  const CashCreditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  PaymentMethodBuilder(
      type: 'Cash',
      amount: '\$25.00',
      title: 'CREDIT CARD',
      onTap:() {
        },
      onTapBak: () {
        Navigator.pop(context);
      },
    );
  }
}
