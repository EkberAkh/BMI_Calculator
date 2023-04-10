import 'package:bmi_calc_2/app/colors/app_border.dart';
import 'package:bmi_calc_2/app/utilities/check_result.dart';
import 'package:bmi_calc_2/app/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_text_style.dart';
import '../../app/constants/app_paddings.dart';
import '../../app/constants/app_sizedbox.dart';
import '../../app/constants/app_texts.dart';
import '../pages/result_page.dart';
import 'all_value_boxes_widget.dart';
import 'gender_card_box.dart';

class HomePageBodyWidget extends StatefulWidget {
  const HomePageBodyWidget({super.key});

  @override
  State<HomePageBodyWidget> createState() => _HomePageBodyWidgetState();
}

class _HomePageBodyWidgetState extends State<HomePageBodyWidget> {
  BoxBorder borderMaleColor = AppBorder.greyBorder;
  BoxBorder borderFemaleColor = AppBorder.greyBorder;
  Color circleMaleColor = AppColors.lightGreyColor;
  Color circleFemaleColor = AppColors.lightGreyColor;
  int weight = 40;
  int height = 150;
  int age = 15;
  

  void onCalculate() {
    double convertedHeight = height / 100;
    double bmiResult = weight / (convertedHeight * convertedHeight);
    Map<String, dynamic> results = checkResult(bmiResult);

    _navigateToNextScreen(context, results);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.a16,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.appName,
              style: AppTextStyle.whiteBoldSize34,
            ),
            AppSizedBox.h20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppTexts.gender, style: AppTextStyle.whiteBold800),
                AppSizedBox.h8,
                Row(
                  children: [
                    GenderCardBox(
                      circleColor: circleMaleColor,
                      icon: FontAwesomeIcons.person,
                      gender: AppTexts.male,
                      border: borderMaleColor,
                      onTap: () {
                        if (borderMaleColor != AppColors.greenColor) {
                          borderMaleColor = AppBorder.greenBorder;
                          borderFemaleColor = AppBorder.greyBorder;
                          circleMaleColor = AppColors.greenColor;
                          circleFemaleColor = AppColors.lightGreyColor;
                          setState(() {});
                        }
                      },
                    ),
                    AppSizedBox.w22,
                    GenderCardBox(
                      circleColor: circleFemaleColor,
                      border: borderFemaleColor,
                      icon: FontAwesomeIcons.personDress,
                      gender: AppTexts.female,
                      onTap: () {
                        if (borderFemaleColor != AppColors.greenColor) {
                          borderMaleColor = AppBorder.greyBorder;
                          borderFemaleColor = AppBorder.greenBorder;
                          circleFemaleColor = AppColors.greenColor;
                          circleMaleColor = AppColors.lightGreyColor;
                          setState(() {});
                        }
                      },
                    ),
                  ],
                ),
                AppSizedBox.h20
              ],
            ),
            AllValueBoxesWidget(
              ageNumber: age,
              heightNumber: height,
              weightNumber: weight,
              weightPlus: () {
                if (weight < 100) {
                  weight++;
                  setState(() {});
                }
              },
              weightMinus: () {
                if (weight > 40) {
                  weight--;
                  setState(() {});
                }
              },
              heightPlus: () {
                if (height < 200) {
                  height++;
                  setState(() {});
                }
              },
              heightMinus: () {
                if (height > 150) {
                  height--;
                  setState(() {});
                }
              },
              ageMinus: () {
                if (age > 15) {
                  age--;
                  setState(() {});
                }
              },
              agePlus: () {
                if (age < 100) {
                  age++;
                  setState(() {});
                }
              },
              onCalculate: onCalculate,
            ),
          ],
        ),
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context, Map<String, dynamic> results) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => ResultPage(
        results: results,
      ),
    ),
  );
}
