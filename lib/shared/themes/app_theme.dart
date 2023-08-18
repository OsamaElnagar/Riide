import 'package:flutter/material.dart';
import 'package:riide/shared/styles/colors.dart';

ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.backgroundColor,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appColor),
  useMaterial3: true,
);
