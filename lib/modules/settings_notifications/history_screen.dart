import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/common_background.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CommonMapBackground(
          onTap: () => Navigator.pop(context),
          label: 'History',
          children: [
            Expanded(
              child: Container(
                color: Colors.black,
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child : Column(
                      children: [
                         SizedBox(height: 30,),
                        RiideHistoryItem(
                          from: '7958 Swift village',
                          to: '105 William St, Chicago, US',
                        ),
                        RiideHistoryItem(
                          from: '026 Mitchell Burg Apt. 574',
                          to: '324 Lottie Views Suite 426',
                        ),
                        RiideHistoryItem(
                          from: '89 Stacy Falls Suite 953',
                          to: '080 Joaquin Isle Suite 865',
                        ),
                        RiideHistoryItem(
                          from: '7958 Swift village',
                          to: '105 William St, Chicago, US',
                        ),
                        RiideHistoryItem(
                          from: '026 Mitchell Burg Apt. 574',
                          to: '080 Joaquin Isle Suite 865',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RiideHistoryItem extends StatelessWidget {
  const RiideHistoryItem({
    super.key,
    required this.from,
    required this.to,
  });

  final String from;
  final String to;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 130,
          child: Row(
            children: [
              SizedBox(
                width: 50,
                height: 100,
                child: SvgPicture.asset(AppAssets.rideHistory),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: HeadLine(
                        headline: from,
                        align: TextAlign.start,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: HeadLine(
                        headline: to,
                        align: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: .4,
          color: AppColors.appGrey,
        ),
      ],
    );
  }
}
