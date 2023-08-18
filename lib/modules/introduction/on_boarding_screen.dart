import 'package:flutter/material.dart';
import 'package:riide/shared/styles/assets.dart';

import '../../shared/components/components.dart';
import '../../shared/styles/colors.dart';
import '../../shared/widgets/custom_indicator.dart';
import '../../shared/widgets/on_boarding_item.dart';
import '../signup_flow/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with SingleTickerProviderStateMixin {
  PageController controller = PageController();

  @override
  void initState() {
    controller = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 1,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .8,
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Rectangle_light.png'),
              ),
            ),
          ),
          PageView(
            onPageChanged: (value) => pageNumber = value,
            controller: controller,
            children: [
              onBoardingItem(
                assetName: AppAssets.board1,
                title: 'Request Ride',
                subtitle1: 'Request a ride get picked up by',
                subtitle2: 'a nearby community driver',
              ),
              onBoardingItem(
                assetName: AppAssets.board2,
                title: 'Confirm Your Driver',
                subtitle1: 'Huge drivers network helps you ',
                subtitle2: 'find comforable, safe and cheap ',
              ),
              onBoardingItem(
                assetName: AppAssets.board3,
                title: 'Track your ride',
                subtitle1: 'Know your driver in advance and ',
                subtitle2:
                    'be able to view current location in real time on the map',
              ),
              onBoardingItem(
                assetName: AppAssets.board4,
                title: 'You’re good to go!',
                subtitle1: 'You are now one of our validated partner',
                subtitle2: ' couriers. Expect your uniform delivered soon.',
              ),
            ],
          ),
          Visibility(
            visible: pageNumber == 3 ? true : false,
            child: Positioned(
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * .08,
              child: InkWell(
                onTap: () => navigateToAndRemoveAllLTR(context, const LoginScreen()),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.appColor,
                  child: const Icon(
                    Icons.check,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * .04,
            child: CustomIndicator(
              dotIndex: controller.hasClients ? controller.page : 0,
            ),
          ),
        ],
      ),
    );
  }
}
