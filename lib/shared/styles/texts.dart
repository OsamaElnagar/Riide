import 'package:flutter/material.dart';
import 'package:riide/shared/styles/colors.dart';

class AuthHeadLine extends StatelessWidget {
  const AuthHeadLine({
    super.key,
    required this.headline,
  });

  final String headline;

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        // fontFamily: 'Mulish',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class HeadLine extends StatelessWidget {
  const HeadLine({
    super.key,
    required this.headline,
    this.align,
    this.maxLines, this.color, this.fs, this.fw,
  });

  final String headline;
  final TextAlign? align;
  final int? maxLines;
  final Color? color;
  final double? fs;
  final FontWeight? fw;

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      textAlign: align ?? TextAlign.center,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      style:  TextStyle(
        color: color??Colors.white,
        fontSize:fs?? 18,
        // fontFamily: 'Mulish',
        fontWeight: fw??FontWeight.w600,
      ),
    );
  }
}

class HintLine extends StatelessWidget {
  const HintLine({
    super.key,
    required this.hintLine, this.maxLines, this.fontSize, this.align,
  });

  final String hintLine;
  final int? maxLines;
  final double? fontSize;
  final TextAlign? align;
  @override
  Widget build(BuildContext context) {
    return Text(
      hintLine,
      textAlign: align ?? TextAlign.center,
      maxLines: maxLines??1,
      style: TextStyle(
        color: AppColors.appGrey,
        fontSize: fontSize??15,
        // fontFamily: 'Mulish',
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// // ignore_for_file: must_be_immutable
//
// import 'package:flutter/material.dart';
// import 'fonts.dart';
//
// class RecoverHints extends StatelessWidget {
//   RecoverHints({
//     Key? key,
//     required this.hint,
//     this.textAlign,
//     this.color,
//     this.fs,
//     this.fw,
//     this.overflow,
//     this.maxLines,
//   }) : super(key: key);
//
//   final String hint;
//   final TextAlign? textAlign;
//   Color? color;
//   double? fs;
//   FontWeight? fw;
//   TextOverflow? overflow;
//   int? maxLines;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       hint,
//       style:
//           RecoverTextStyles.recoverHintMontserrat(color: color, fs: fs, fw: fw),
//       textAlign: textAlign ?? TextAlign.center,
//       overflow: overflow ?? TextOverflow.ellipsis,
//       maxLines: maxLines ?? 15,
//     );
//   }
// }
//
// class RecoverHeadlines extends StatelessWidget {
//   RecoverHeadlines(
//       {Key? key,
//       required this.headline,
//       this.color,
//       this.textAlign,
//       this.fs,
//       this.fw,
//       this.overflow,
//       this.maxLines})
//       : super(key: key);
//
//   final String headline;
//   final TextAlign? textAlign;
//   Color? color;
//   double? fs;
//   FontWeight? fw;
//   TextOverflow? overflow;
//   int? maxLines;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       headline,
//       textAlign: textAlign ?? TextAlign.center,
//       style: RecoverTextStyles.recoverHeadlines(color: color, fs: fs, fw: fw),
//       overflow: overflow ?? TextOverflow.ellipsis,
//       maxLines: maxLines ?? 20,
//     );
//   }
// }
//
// class RecoverNormalTexts extends StatelessWidget {
//   RecoverNormalTexts({
//     Key? key,
//     required this.norText,
//     this.color,
//     this.textAlign,
//     this.fs,
//     this.fw,
//     this.overflow,
//     this.maxLines,
//   }) : super(key: key);
//
//   final String norText;
//   final TextAlign? textAlign;
//   Color? color;
//   double? fs;
//   FontWeight? fw;
//   TextOverflow? overflow;
//   int? maxLines;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       norText,
//       textAlign: textAlign ?? TextAlign.center,
//       style: RecoverTextStyles.recoverRegularMontserrat(
//         fs: fs,
//         fw: fw,
//         color: color,
//       ),
//       overflow: overflow ?? TextOverflow.ellipsis,
//       maxLines: maxLines ?? 15,
//     );
//   }
// }
//
// SizedBox recoverSpacer({width, height}) {
//   return SizedBox(
//     width: width ?? double.infinity,
//     height: height ?? 25.0,
//   );
// }
//
// Divider recoverDivider({thickness, height, color}) {
//   return Divider(
//     height: height,
//     color: color,
//     thickness: thickness,
//   );
// }
