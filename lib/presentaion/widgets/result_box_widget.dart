import 'package:bmi_calc_2/app/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../app/colors/app_colors.dart';
import '../../app/colors/app_text_style.dart';
import '../../app/constants/app_paddings.dart';
import '../../app/constants/app_sizedbox.dart';
import '../../app/constants/app_texts.dart';

class ResultBoxWidget extends StatelessWidget {
  final String result;
  final Image iconImage;
  ResultBoxWidget({super.key, required this.result, required this.iconImage});

  @override
  Widget build(BuildContext context) {
    List<String> bmiLevels = ['Underweight', 'Healthy', 'Overweight', 'Obese'];
    return Expanded(
      child: Container(
        padding: AppPaddings.v8,
        decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                '${AppTexts.currentBmi}:',
                style: AppTextStyle.lightGreySize18,
              ),
              AppSizedBox.h16,
              Text(
                result,
                style: AppTextStyle.whiteBoldSize34,
              ),
              AppSizedBox.h16,
              iconImage
            ],
          ),
        ),
      ),
    );
  }
}
