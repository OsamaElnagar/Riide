import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riide/brain/blocs/introduction_cubit.dart';
import 'package:riide/shared/networking/local/blocObserver.dart';

import 'modules/introduction/splash_screen.dart';
import 'shared/themes/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  Widget startingWidget() {
    return const SplashScreen();
  }

  runApp(MyApp(
    startingWidget: startingWidget(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.startingWidget});

  final Widget startingWidget;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => IntroductionCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: startingWidget,
      ),
    );
  }
}
