import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget svgBoard(
  String asset,
) {
  return SvgPicture.asset(
    asset,
    semanticsLabel: '',
    placeholderBuilder: (BuildContext context) => Container(
      width: 278,
      height: 278,
      padding: const EdgeInsets.all(30.0),
      child: const CircularProgressIndicator(),
    ),
  );
}
