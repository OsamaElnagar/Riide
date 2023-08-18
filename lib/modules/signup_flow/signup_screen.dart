import 'package:flutter/material.dart';
import 'package:riide/modules/introduction/get_started_screen.dart';
import 'package:riide/modules/signup_flow/login_screen.dart';

import '../../shared/components/components.dart';
import '../../shared/styles/form_fields.dart';
import '../../shared/styles/texts.dart';
import '../../shared/widgets/app_button.dart';
import '../../shared/widgets/common_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonBackground(
        children: [
          const AuthHeadLine(headline: 'Sign Up'),
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
                  text: 'Sign Up',
                  onTap: () {
                    navigateToAndRemoveAllRTL(context, const LoginScreen());
                  },
                ),
                const SizedBox(height: 15),
                HintLineButton(
                  onTap: () =>
                      navigateToAndRemoveAllRTL(context, const LoginScreen()),
                  hint: 'Already have an account? ',
                  action: 'Sign in',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
