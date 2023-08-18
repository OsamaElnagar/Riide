import 'package:flutter/material.dart';
import 'package:riide/modules/introduction/on_boarding_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/widgets/svg_object.dart';

import '../../shared/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  void goToNextView() {
    Future.delayed(const Duration(seconds: 4), () {
      navigate2(context, const OnBoardingScreen());
    });
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    animation = Tween<double>(begin: .45, end: 1).animate(animationController);
    animationController.repeat(reverse: true);
    goToNextView();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: RingShape(
            child: svgBoard(AppAssets.appLogo),
          ),
        ),
      ),
    );
  }
}

class RingShape extends StatelessWidget {
  const RingShape({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: RingPainter(),
        child: child,
      ),
    );
  }
}

class RingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width * .59;
    const strokeWidth = 10.0;

    final paint = Paint()
      ..color = AppColors.appColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
