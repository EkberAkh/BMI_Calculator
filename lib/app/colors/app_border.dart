import 'package:bmi_calc_2/app/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';

class AppBorder {
  AppBorder._();

  static BoxBorder get greenBorder => Border.all(color: AppColors.greenColor,width: 3);
  static BoxBorder get greyBorder => Border.all(color: AppColors.greyColor);
}
