import 'package:flutter/material.dart';
import 'package:riide/shared/widgets/svg_object.dart';

class onBoardingItem extends StatelessWidget {
  const onBoardingItem({
    super.key,
    required this.assetName,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  });

  final String assetName;
  final String title;
  final String subtitle1;
  final String subtitle2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .1,
        ),
        Center(
          child: svgBoard(assetName),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 151,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(height: 31),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child: Text(
              subtitle1 + subtitle2,
              style: const TextStyle(
                color: Color(0xFF80808A),
                fontSize: 17,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
