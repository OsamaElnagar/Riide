import 'package:flutter/material.dart';

import '../../styles/texts.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.hint,
      this.callback,
      this.color});

  final IconData icon;
  final String title;
  final String hint;
  final VoidCallback? callback;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: callback,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 75,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      icon,
                      color: color ?? Colors.blueAccent,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadLine(headline: title),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .65,
                        child: HintLine(hintLine: hint, align: TextAlign.start),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey,
              height: .2,
            ),
          ),
        ],
      ),
    );
  }
}
