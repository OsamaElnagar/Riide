import 'package:flutter/material.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/texts.dart';

import '../../styles/colors.dart';

class ViewThree extends StatelessWidget {
  const ViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.bottomSheetItem,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 23,
                            child: Image.asset(AppAssets.carDrawing),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HeadLine(headline: 'Just go'),
                              HintLine(hintLine: 'Near by you.'),
                            ],
                          ),
                          const Spacer(),
                          const SizedBox(
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HeadLine(headline: '\$25.00'),
                                HintLine(hintLine: '2 min'),
                              ],
                            ),
                          ),
                        ],
                      )),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: 10),
            ),
          ),
        ],
      ),
    );
  }
}
