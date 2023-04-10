import 'package:flutter/cupertino.dart';

import '../constants/app_font_weight.dart';
import 'app_colors.dart';

class AppTextStyle {
  AppTextStyle._();
  static TextStyle get whiteBold800 => const TextStyle(
      color: AppColors.whiteColor, fontWeight: AppFontWeight.bold800);

      static TextStyle get whiteBold800Size18 => const TextStyle(
      color: AppColors.whiteColor, fontWeight: AppFontWeight.bold800,fontSize: 18);


  static TextStyle get whiteBoldSize34 => const TextStyle(
      color: AppColors.whiteColor,
      fontWeight: AppFontWeight.bold800,
      fontSize: 34);

  static TextStyle get lightGreySize18 =>
      const TextStyle(color: AppColors.lightGreyColor, fontSize: 18);

      static TextStyle get whiteSize18 =>
      const TextStyle(color: AppColors.whiteColor, fontSize: 18,fontWeight: AppFontWeight.bold400);
}
