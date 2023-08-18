import 'package:flutter/material.dart';

import 'colors.dart';

class AppPFF extends StatelessWidget {
  const AppPFF({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Make it full width
      height: 48,
      child: Stack(
        children: [
          Container(
            width: double.infinity, // Make it full width
            height: 48,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xD80A0A0A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned.fill(
            child: TextFormField(
              textInputAction: TextInputAction.go,
              obscureText: true,
              style: const TextStyle(
                color: Colors.white,
                // Set the input text color to white
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                height: 1.67,
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                  color: Color(0xFF5E5E5E),
                  fontSize: 12,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  height: 1.67,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xFF5E5E5E), // Set the desired border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.appColor, // Set the desired border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.only(left: 16, top: 14),
                // suffixIcon: GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       isPasswordHidden = !isPasswordHidden; // Toggle password visibility
                //     });
                //   },
                //   child: Icon(
                //     isPasswordHidden ? Icons.visibility : Icons.visibility_off,
                //     color: Colors.grey, // Set icon color
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppTFF extends StatelessWidget {
  const AppTFF({
    super.key,
    required this.hint, this.action,
  });

  final String hint;
  final TextInputAction? action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Make it full width
      height: 48,
      child: Stack(
        children: [
          Container(
            width: double.infinity, // Make it full width
            height: 48,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xD80A0A0A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned.fill(
            child: TextFormField(
              textInputAction:action?? TextInputAction.next,
              obscureText: false,
              style: const TextStyle(
                color: Colors.white,
                // Set the input text color to white
                fontSize: 12,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400,
                height: 1.67,
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: AppColors.appGrey,
                  fontSize: 12,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  height: 1.67,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.appGrey),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.appColor, // Set the desired border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.only(left: 16, top: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
