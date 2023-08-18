import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:riide/modules/introduction/get_started_screen.dart';
import 'package:riide/modules/service_review/rating_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/form_fields.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/app_button.dart';
import 'package:riide/shared/widgets/booking/booking_common_background.dart';
import 'package:riide/shared/widgets/booking/booking_view_three.dart';
import 'package:riide/shared/widgets/custom_indicator.dart';

import '../../shared/widgets/booking/booking_view_Two.dart';
import '../../shared/widgets/booking/booking_view_one.dart';

class PromoCodeScreen extends StatefulWidget {
  const PromoCodeScreen({super.key});

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen>
    with SingleTickerProviderStateMixin {
  bool _isBottomSheetVisible = false;

  late AnimationController animationController;
  PageController pageController = PageController();

  void _toggleBottomSheet() {
    setState(() {
      _isBottomSheetVisible = !_isBottomSheetVisible;
    });
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            _isBottomSheetVisible ? _toggleBottomSheet() : null;
          },
          child: Stack(
            children: [
               BookingCB(
                onTapBack: () {
                  navigateToAndRemoveAllLTR(context, const GetStartedScreen());
                },
                label: '',
                children: [],
              ),
              AnimatedOpacity(
                opacity: _isBottomSheetVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        heroTag: '1',
                        onPressed: () {},
                        backgroundColor: Colors.black,
                        child: const Icon(
                          Icons.call_outlined,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      FloatingActionButton(
                        heroTag: '2',
                        onPressed: () {
                          navigateTo(context, const RatingScreen());
                        },
                        backgroundColor: Colors.black,
                        child: const Icon(
                          Icons.send_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: AnimatedOpacity(
        opacity: _isBottomSheetVisible ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 500),
        child: FloatingActionButton(
          heroTag: '3',
          onPressed: () {
            _toggleBottomSheet();
          },
          child: const Icon(Icons.add),
        ),
      ),
      bottomSheet: _isBottomSheetVisible
          ? BottomSheet(
              backgroundColor: Colors.black,
              enableDrag: true,
              animationController: animationController,
              onClosing: () {
                _toggleBottomSheet();
              },
              builder: (context) {
                int pageNumber = 0;
                final screenHeight = MediaQuery.of(context).size.height;
                double maxHeight = pageController.hasClients
                    ? (pageController.page == 0
                        ? screenHeight * 0.23
                        : screenHeight * 0.40)
                    : screenHeight * 0.23;

                return ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: maxHeight),
                  child: SizedBox(
                    height: double.infinity,
                    child: Stack(
                      children: [
                        PageView(
                          onPageChanged: (value) => pageNumber = value,
                          controller: pageController,
                          children: const [
                            ViewOne(),
                            ViewTwo(),
                            ViewThree()
                          ],
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 3,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomIndicator(
                              dotIndex: pageController.hasClients
                                  ? pageController.page
                                  : 0,
                              dotsCount: 3),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : null,
    );
  }
}
