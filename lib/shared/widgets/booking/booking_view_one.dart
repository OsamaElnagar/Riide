import 'package:flutter/material.dart';

import '../../styles/form_fields.dart';
import '../app_button.dart';

class ViewOne extends StatelessWidget {
  const ViewOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          const AppTFF(
            hint: 'Enter your promo code...',
          ),
          const SizedBox(
            height: 20,
          ),
          CommonButton(
            text: 'Apply promo code',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
