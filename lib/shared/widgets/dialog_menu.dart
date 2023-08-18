import 'package:flutter/material.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/texts.dart';

class CustomDialogMenuItem {
  final IconData icon;
  final Color color;
  final String type;
  final String hint;
  final VoidCallback onTap;

  CustomDialogMenuItem({
    required this.icon,
    required this.color,
    required this.type,
    required this.hint,
    required this.onTap,
  });
}

class CustomDialogMenu extends StatelessWidget {
  final List<CustomDialogMenuItem> items;

  const CustomDialogMenu({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
       backgroundColor: Colors.black,
      content: SingleChildScrollView(
        child : Column(
          mainAxisSize: MainAxisSize.min,
          children: items.map((item) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              padding: const EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.bottomSheetItem,
              ),
              alignment: Alignment.centerLeft,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: item.onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: 50,
                      height: 80,
                      child: Icon(
                        item.icon,
                        color: item.color,
                        size: 35,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 100,

                          child: HeadLine(headline:
                            item.type,
                            maxLines: 2,
                          ),
                        ),
                        const SizedBox(height: 5),
                        HintLine(hintLine: item.hint),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
