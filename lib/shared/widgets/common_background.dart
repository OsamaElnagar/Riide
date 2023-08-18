import 'package:flutter/material.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/svg_object.dart';

import '../styles/assets.dart';

class CommonBackground extends StatelessWidget {
  final List<Widget> children;

  const CommonBackground({
    Key? key,
    this.children = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OpacityImage(assetName: AppAssets.rectangleLight),
        SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .24,
              ),
              Center(
                child: svgBoard(AppAssets.appLogo),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              ...children,
            ],
          ),
        ),
      ],
    );
  }
}

class OpacityImage extends StatelessWidget {
  const OpacityImage({
    super.key,
    required this.assetName,
    this.height, this.opacity,
  });

  final String assetName;
  final double? height;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity:opacity??1,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height * .8,
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(assetName),
        ),
      ),
    );
  }
}

class CommonMapBackground extends StatelessWidget {
  const CommonMapBackground(
      {super.key, required this.children, required this.label, this.icon, this.onTap});

  final List<Widget> children;
  final String label;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OpacityImage(
          opacity: .8,
          assetName: AppAssets.mapsicleMap,
          height: double.infinity,
        ),
        Column(
          children: [
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
            ...children,
          ],
        ),
      ],
    );
  }
}


class FirstIcon extends StatelessWidget {
  const FirstIcon({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: ShapeDecoration(
          color: const Color(0xFF0E0E0E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0F202020),
              blurRadius: 10,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: const Icon(
          Icons.arrow_back_ios_new,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SecondIcon extends StatelessWidget {
  const SecondIcon({super.key, required this.icon});

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
        color: const Color(0xFF0E0E0E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0F202020),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Icon(
        icon ?? Icons.delete,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}

