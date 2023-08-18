import 'package:flutter/material.dart';

import '../../styles/colors.dart';
import '../../styles/form_fields.dart';
import '../../styles/texts.dart';
import '../app_button.dart';

class ViewTwo extends StatelessWidget {
  const ViewTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 25,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
                color: AppColors.bottomSheetItem,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 12,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          '5 minutes left',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                      width: 120,
                      height: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors
                            .appColor), // Fill color of the progress bar
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: CommonButton(
                    fontSize: 16,
                    text: 'Confirm',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 110,
                          height: 90,
                          decoration: BoxDecoration(
                            color: AppColors.bottomSheetItem,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.monetization_on_outlined,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: HeadLine(headline: '\$25.00'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Container(
                          width: 110,
                          height: 90,
                          decoration: BoxDecoration(
                              color: AppColors.bottomSheetItem,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    Icons.star_border,
                                    color: Colors.yellow,
                                    size: 25,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: HeadLine(headline: '4.5'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        width: 223,
                        //height: 70,
                        decoration: BoxDecoration(
                            color: AppColors.bottomSheetItem,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.location_on,
                                  color: AppColors.bo,
                                  size: 25,
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomLeft,
                                child: HeadLine(headline: 'Distance'),
                              ),
                              const Align(
                                alignment: Alignment.bottomRight,
                                child: HeadLine(
                                    headline: '2.9 Km', color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    // width: 70,
                    // height: 190,
                    decoration: BoxDecoration(
                        color: AppColors.bottomSheetItem,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.purple,
                              size: 25,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: HeadLine(
                              headline: '25',
                              fs: 25,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: HeadLine(
                                headline: 'Recommended',
                                fs: 14,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

