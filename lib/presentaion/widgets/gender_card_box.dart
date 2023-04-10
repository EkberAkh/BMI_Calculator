import 'package:bmi_calc_2/app/colors/app_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_colors.dart';
import '../../app/colors/app_text_style.dart';
import '../../app/constants/app_paddings.dart';
import '../../app/constants/app_sizedbox.dart';
import 'circle_icon_widget.dart';

class GenderCardBox extends StatelessWidget {
  final IconData icon;
  final String gender;
  Color circleColor;
  void Function() onTap;
  BoxBorder border;
   GenderCardBox({super.key, required this.icon, required this.gender,required this.onTap,required this.border,required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          padding: AppPaddings.v8,
          decoration: BoxDecoration(
            border: border,
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppSizedBox.h10,
                    FaIcon(
                      icon,
                      color: AppColors.whiteColor,
                      size: 100,
                    ),
                    AppSizedBox.h16,
                    Text(gender, style: AppTextStyle.whiteBold800),
                  ],
                ),
              ),
               CircleIconWidget(color: circleColor,)
            ],
          ),
        ),
      ),
    );
  }
}
