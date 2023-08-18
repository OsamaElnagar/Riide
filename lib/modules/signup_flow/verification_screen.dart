import 'package:flutter/material.dart';
import 'package:riide/modules/introduction/get_started_screen.dart';
import 'package:riide/modules/messaging/messages_screen.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/styles/texts.dart';
import 'package:riide/shared/widgets/app_button.dart';
import 'package:riide/shared/widgets/common_background.dart';

import 'login_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final List<TextEditingController> _controllers = List.generate(
    5,
    (_) => TextEditingController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        children: [
          const AuthHeadLine(headline: 'Verification code'),
          SizedBox(height: MediaQuery.of(context).size.height * .1),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              5,
              (index) => SizedBox(
                width: 48.0,
                height: 48.0,
                child: Container(
                  alignment: Alignment.center,
                  height: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Color(0xD80F0F0F),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,

                    style: const TextStyle(color: Colors.white),
                    controller: _controllers[index],
                    keyboardType: TextInputType.number,
                    textInputAction:
                        index == 4 ? TextInputAction.go : TextInputAction.next,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.appColor, width: .1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.appColor, width: 2),
                      ),
                    ),

                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 52.0),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CommonButton(
                text: 'Verify Now',
                onTap: () => navigateToAndRemoveAllRTL(context, const GetStartedScreen()),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          HintLineButton(
            onTap: () =>
                navigateToAndRemoveAllRTL(context, const LoginScreen()),
            hint: 'Not received code? ',
            action: 'Send again',
          ),
        ],
      ),
    );
  }
}
// Container(
//   width: 320,
//   height: 242,
//   child: Column(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//      const AuthHeadLine(headline: 'Verification Code'),
//       const SizedBox(height: 35),
//       Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: Container(
//                   height: double.infinity,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     color:  AppColors.appGrey,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 52,
//                         height: 48,
//                         decoration:  BoxDecoration(color: AppColors.verifyBox),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: double.infinity,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     color:  AppColors.appGrey,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 52,
//                         height: 48,
//                         decoration:  BoxDecoration(color: AppColors.verifyBox),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: double.infinity,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     color:  AppColors.appGrey,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 52,
//                         height: 48,
//                         decoration:  BoxDecoration(color: AppColors.verifyBox),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: double.infinity,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     color:  AppColors.appGrey,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 52,
//                         height: 48,
//                         decoration:  BoxDecoration(color: AppColors.verifyBox),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: double.infinity,
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     color:  AppColors.appGrey,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 52,
//                         height: 48,
//                         decoration:  BoxDecoration(color: AppColors.verifyBox),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       const SizedBox(height: 35),
//       Container(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               width: 320,
//               height: 50,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               decoration: ShapeDecoration(
//                 color: const Color(0xFF4CE5B1),
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
//               ),
//               child: const Row(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Verify Now',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 11,
//                       fontFamily: 'Gilroy',
//                       fontWeight: FontWeight.w800,
//                       height: 1.45,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 15),
//             const Text.rich(
//               TextSpan(
//                 children: [
//                   TextSpan(
//                     text: 'Not received code ? ',
//                     style: TextStyle(
//                       color: Color(0xFF80808A),
//                       fontSize: 15,
//                       fontFamily: 'Mulish',
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'Send again',
//                     style: TextStyle(
//                       color: Color(0xFF1DAEFF),
//                       fontSize: 15,
//                       fontFamily: 'Mulish',
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     ],
//   ),
// ),
