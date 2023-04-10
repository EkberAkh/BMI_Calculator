import 'package:bmi_calc_2/app/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get appTheme => ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.backgroundColor,centerTitle: true),
    
    
  );
}
