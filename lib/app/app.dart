import 'package:bmi_calc_2/app/colors/app_themes.dart';
import 'package:bmi_calc_2/app/constants/app_texts.dart';
import 'package:bmi_calc_2/presentaion/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: AppTexts.appName,
      theme: AppThemes.appTheme,
      home:  HomePage(),
      
    );
  }
}
