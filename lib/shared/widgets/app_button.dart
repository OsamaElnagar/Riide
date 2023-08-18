import 'package:flutter/material.dart';

import '../styles/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 334,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          color: AppColors.appColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        ),
        child: const Center(
          child: Text(
            'Get Started',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w800,
              height: 1.45,
            ),
          ),
        ),
      ),
    );
  }
}

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fontSize,
  });

  final String text;
  final VoidCallback onTap;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //width: 351,
        height: 50,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: ShapeDecoration(
          color: AppColors.appColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize ?? 20,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w800,
            height: 1.45,
          ),
        ),
      ),
    );
  }
}
