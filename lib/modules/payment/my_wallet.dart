import 'package:flutter/material.dart';
import 'package:riide/modules/payment/riide_wallet.dart';
import 'package:riide/modules/service_review/tips_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/texts.dart';
import '../../shared/widgets/service_review_and_payment/service_payment.dart';
import 'cash.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RatingAndPaymentBackground(
          twoCircles: true,
          asset1: AppAssets.riides,
          asset2: AppAssets.cash,
          onTap: () => navigateToLTR(context, const TipsScreen()),
          label: 'My Wallet',
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .2,
                      ),
                      WalletItem(
                        onTap: () {},
                        color: Colors.blue,
                        hint: 'Select your payment method',
                        icon: Icons.check_circle,
                        type: 'Payment Method',
                      ),
                      WalletItem(
                        onTap: () {},
                        color: Colors.cyanAccent,
                        hint: 'Invite friends and earn \$Riide',
                        icon: Icons.wallet_outlined,
                        type: 'Coupon',
                      ),
                      WalletItem(
                        onTap: () {},
                        color: Colors.red,
                        hint: 'Pay with other cryptocurrency',
                        icon: Icons.close,
                        type: 'Crypto',
                      ),
                    ],
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

class WalletItem extends StatelessWidget {
  const WalletItem({
    super.key,
    required this.icon,
    required this.type,
    required this.hint,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String type;
  final String hint;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),

        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.bottomSheetItem,
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.transparent,
              width: 50,
              height: 80,
              child: Icon(
                icon,
                color: color,
                size: 35,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadLine(
                  headline: type,
                ),
                const SizedBox(height: 5),
                HintLine(
                  hintLine: hint,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
