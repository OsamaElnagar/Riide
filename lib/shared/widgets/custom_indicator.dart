import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:riide/shared/styles/colors.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, @required this.dotIndex, this.dotsCount}) : super(key: key);
  final double? dotIndex;
final int? dotsCount;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: AppColors.appColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: AppColors.appColor),
          )),
      dotsCount:dotsCount?? 4,
      position: dotIndex!.toInt(),
    );
  }
}
