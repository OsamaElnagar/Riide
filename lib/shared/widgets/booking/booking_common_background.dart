import 'package:flutter/material.dart';

import '../../styles/assets.dart';
import '../../styles/texts.dart';
import '../common_background.dart';

class BookingCB extends StatelessWidget {
  const BookingCB(
      {super.key,
      required this.children,
      required this.label,
      this.icon,
      this.onTapBack});

  final List<Widget> children;
  final String label;
  final IconData? icon;
  final VoidCallback? onTapBack;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OpacityImage(
          assetName: AppAssets.bookingImg,
          height: double.infinity,
        ),
        Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .27,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0),
              ),
              child: Center(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FirstIcon(
                    onTap: onTapBack ?? () => Navigator.pop(context),
                  ),
                  AuthHeadLine(headline: label),
                  SecondIcon(icon: icon),
                ],
              )),
            ),
            ...children,
          ],
        ),
      ],
    );
  }
}
