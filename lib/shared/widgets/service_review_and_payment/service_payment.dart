import 'package:flutter/material.dart';
import 'package:riide/shared/styles/texts.dart';
import '../../../modules/payment/cash.dart';
import '../../../modules/payment/riide_wallet.dart';
import '../../components/components.dart';
import '../../styles/assets.dart';
import '../common_background.dart';

class RatingAndPaymentBackground extends StatelessWidget {
  const RatingAndPaymentBackground({
    super.key,
    required this.children,
    required this.label,
    this.icon,
    this.twoCircles = false,
    this.onTap,
    this.asset1,
    this.asset2,
  });

  final List<Widget> children;
  final String label;
  final IconData? icon;
  final bool twoCircles;
  final VoidCallback? onTap;
  final String? asset1;
  final String? asset2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OpacityImage(
          opacity: .8,
          assetName: AppAssets.mapsicleMap,
          height: double.infinity,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .27,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.4),
          ),
          child: Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FirstIcon(onTap: onTap),
              AuthHeadLine(headline: label),
              SecondIcon(icon: icon),
            ],
          )),
        ),
        Positioned(
          bottom: 0,
          top: MediaQuery.of(context).size.height * .27,
          right: 0,
          left: 0,
          child: Container(
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .08,
                ),
                ...children,
              ],
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            if (!twoCircles) {
              return Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height * .215,
                    right: MediaQuery.of(context).size.width * .5 - 45,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(
                        asset1 ?? AppAssets.avatar,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height * .215,
                    left: MediaQuery.of(context).size.width * .2,
                    child: InkWell(
                      onTap: () => navigateTo(context, const RiideWalletAddressScreen()),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              asset1 ?? AppAssets.avatar,
                            ),
                          ),
                          const SizedBox(
                            height:25,
                          ),
                          const Column(
                            children: [
                              HeadLine(
                                headline: '\$Riide',
                                fw: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              HeadLine(
                                headline: '15',
                                color: Colors.white,
                                fs: 25,
                                fw: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .215,
                    right: MediaQuery.of(context).size.width * .2,
                    child: InkWell(
                      onTap: () => navigateTo(context, const CashCreditCardScreen()),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              asset2 ?? AppAssets.avatar,
                            ),
                          ),
                          const SizedBox(
                            height:25,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HeadLine(
                                headline: 'Cash',
                                fw: FontWeight.w500,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              HeadLine(
                                headline: '\$25.00',
                                color: Colors.white,
                                fs: 25,
                                fw: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ],
    );
  }
}
