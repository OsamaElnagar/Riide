import 'package:flutter/material.dart';
import 'package:riide/modules/messaging/messages_screen.dart';
import 'package:riide/modules/settings_notifications/home_settings.dart';
import 'package:riide/shared/components/components.dart';
import 'package:riide/shared/styles/assets.dart';
import 'package:riide/shared/styles/colors.dart';
import 'package:riide/shared/widgets/app_button.dart';
import 'package:riide/shared/widgets/svg_object.dart';
import '../../shared/widgets/dialog_menu.dart';
import '../signup_flow/login_screen.dart';
import 'on_boarding_screen.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final Widget car = Container(
    width: 321,
    height: 314,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          AppAssets.car,
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Opacity(
          opacity: 1,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .8,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(AppAssets.rectangleLight),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Center(
                child: svgBoard(AppAssets.appLogo),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Center(child: car),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              const Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 302,
                  child: Text(
                    'Order your Riide',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w800,
                      height: 1.20,
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 311,
                  height: 47,
                  child: Text(
                    'Please login to book your Riide taxi or courier service.',
                    style: TextStyle(
                      color: Color(0xFF80808A),
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              CommonButton(
                text: 'Get Started',
                onTap: () {
                  showDialog(
                    barrierColor: AppColors.appColor.withOpacity(.3),
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialogMenu(
                        items: [
                          CustomDialogMenuItem(
                            icon: Icons.home,
                            color: AppColors.appColor,
                            type: 'Home',
                            hint: 'Go to home page',
                            onTap: () {

                              navigateTo(context, const HomeSettings());

                            },
                          ),
                          CustomDialogMenuItem(
                            icon: Icons.car_rental_sharp,
                            color: Colors.purpleAccent,
                            type: 'Messaging Riides',
                            hint: 'Get a Riide',
                            onTap: () {

                              navigateToLTR(context, const MessagesScreen());

                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
