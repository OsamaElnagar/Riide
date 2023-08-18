import 'package:flutter/material.dart';
import 'package:riide/modules/introduction/get_started_screen.dart';
import 'package:riide/modules/signup_flow/signup_screen.dart';
import 'package:riide/modules/signup_flow/verification_screen.dart';
import 'package:riide/shared/components/components.dart';

import '../../shared/styles/colors.dart';
import '../../shared/styles/form_fields.dart';
import '../../shared/styles/texts.dart';
import '../../shared/widgets/app_button.dart';
import '../../shared/widgets/common_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordHidden = false;
  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        children: [
          const AuthHeadLine(headline: 'Welcome to RIIDE'),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'USERNAME',
                  style: TextStyle(
                    color: Color(0xFFCDCDCD),
                    fontSize: 9,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    height: 2.22,
                    letterSpacing: 1.89,
                  ),
                ),
                const SizedBox(height: 4),
                const AppTFF(hint: 'Enter email or username'),
                const SizedBox(height: 15),
                const Text(
                  'PASSWORD',
                  style: TextStyle(
                    color: Color(0xFFCDCDCD),
                    fontSize: 9,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    height: 2.22,
                    letterSpacing: 1.89,
                  ),
                ),
                const SizedBox(height: 4),
                const AppPFF(hint: 'Enter your password'),
                const SizedBox(height: 15),
                SizedBox(
                  //width: 342,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Remember me',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Checkbox(
                        value: rememberMe,
                        onChanged: (bool? status) {
                          setState(() {
                            rememberMe = status!;
                          });
                        },
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Forgot password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1DAEFF),
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .1),
                CommonButton(
                  text: 'Sign in',
                  onTap: () {
                    navigateToAndRemoveAllRTL(
                        context, const VerificationScreen());
                  },
                ),
                const SizedBox(height: 15),
                HintLineButton(
                  onTap: () =>
                      navigateToAndRemoveAllLTR(context, const SignUpScreen()),
                  hint: 'Don’t have an account ? ',
                  action: 'Sign up',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HintLineButton extends StatelessWidget {
  const HintLineButton({
    super.key,
    required this.onTap,
    required this.action,
    required this.hint,
  });

  final VoidCallback onTap;
  final String action;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: hint,
              style: const TextStyle(
                color: Color(0xFF80808A),
                fontSize: 15,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: action,
              style: const TextStyle(
                color: Color(0xFF1DAEFF),
                fontSize: 15,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
