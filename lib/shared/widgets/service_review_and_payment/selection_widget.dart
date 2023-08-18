import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/texts.dart';



class SelectionWidget extends StatefulWidget {
  @override
  _SelectionWidgetState createState() => _SelectionWidgetState();
}

class _SelectionWidgetState extends State<SelectionWidget> {
  int _selectedItemIndex = -1;

  List<Map<String, dynamic>> items = [
    {'image': AppAssets.visa, 'text': '**** **** **** 5967'},
    {'image': AppAssets.paypal, 'text': 'wilson.casper@bernice.in'},
    {'image': AppAssets.mastercard, 'text': '**** **** **** 3461'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
            (index) {
          bool isSelected = _selectedItemIndex == index;

          return GestureDetector(
            onTap: () {
              if(_selectedItemIndex==index)
              {
               setState(() {
                 _selectedItemIndex = -1;
               });
              }else {
                setState(() {
                _selectedItemIndex = index;
              });
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 18),
              margin: const EdgeInsets.symmetric(horizontal:0, vertical: 8),
              decoration: BoxDecoration(
                color: AppColors.bottomSheetItem,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? AppColors.appColor : Colors.transparent,
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [

                  SizedBox(
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(
                      items[index]['image'],

                    ),
                  ),
                  const SizedBox(width: 6),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/1.57,
                    child: HintLine(
                      hintLine: items[index]['text'],
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  if (isSelected)
                    Icon(
                      Icons.check_circle,
                      color: AppColors.appColor,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

