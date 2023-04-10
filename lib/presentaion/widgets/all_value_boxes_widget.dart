import 'package:bmi_calc_2/presentaion/pages/result_page.dart';
import 'package:bmi_calc_2/presentaion/widgets/height_small_box_widget.dart';
import 'package:bmi_calc_2/presentaion/widgets/weight_small_box_widget.dart';
import 'package:bmi_calc_2/presentaion/widgets/white_boxes_widget.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_colors.dart';
import '../../app/colors/app_text_style.dart';
import '../../app/constants/app_paddings.dart';
import '../../app/constants/app_sizedbox.dart';
import '../../app/constants/app_texts.dart';
import 'age_box_widget.dart';
import 'calculate_button_widget.dart';

class AllValueBoxesWidget extends StatelessWidget {
  final Function() onCalculate;
  void Function() weightPlus;
  void Function() weightMinus;
  void Function() heightPlus;
  void Function() heightMinus;
  void Function() ageMinus;
  void Function() agePlus;
  final int weightNumber;
  final heightNumber;
  final ageNumber;
  AllValueBoxesWidget(
      {super.key,
      required this.onCalculate,
      required this.ageMinus,
      required this.agePlus,
      required this.weightPlus,
      required this.weightMinus,
      required this.heightPlus,
      required this.heightMinus,
      required this.ageNumber,
      required this.heightNumber,
      required this.weightNumber});

      

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.weight,
          style: AppTextStyle.whiteBold800,
        ),
        AppSizedBox.h8,
        Row(
          children: [
            AppSizedBox.h8,
            WhiteBoxesWidget(
              onMinus: weightMinus,
              onPlus: weightPlus,
              numberValue: weightNumber,
            ),
            WeightSmallBoxWidget(),
            AppSizedBox.h26,
          ],
        ),
        AppSizedBox.h26,
        Text(
          AppTexts.height,
          style: AppTextStyle.whiteBold800,
        ),
        AppSizedBox.h8,
        Row(
          children: [
            AppSizedBox.h8,
            WhiteBoxesWidget(
              onMinus: heightMinus,
              onPlus: heightPlus,
              numberValue: heightNumber,
            ),
            HeightSmallBoxWidget()
          ],
        ),
        AppSizedBox.h26,
        Text(
          AppTexts.age,
          style: AppTextStyle.whiteBold800,
        ),
        AppSizedBox.h8,
        AgeBoxWidget(
          age: ageNumber,
          onMinus: ageMinus,
          onPlus: agePlus,
        ),
        AppSizedBox.h48,
        CalculateButtonWidget(
          text: 'Calculate BMI ',
          onTap:  onCalculate,
        ),
      ],
    );
  }
}


