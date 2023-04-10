import 'package:bmi_calc_2/app/constants/app_sizedbox.dart';
import 'package:bmi_calc_2/app/constants/app_texts.dart';
import 'package:bmi_calc_2/presentaion/widgets/calculate_button_widget.dart';
import 'package:bmi_calc_2/presentaion/widgets/result_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_text_style.dart';
import '../../app/constants/app_assets.dart';
import '../../app/constants/app_paddings.dart';
import '../widgets/icon_button_widget.dart';

class ResultPage extends StatelessWidget {
  final Map<String, dynamic> results;

  const ResultPage({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButtonWidget(icon: FontAwesomeIcons.bars),
        actions: const [IconButtonWidget(icon: FontAwesomeIcons.bell)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.a16,
          child: Center(
            child: Column(
              children: [
                Text(AppTexts.result, style: AppTextStyle.whiteBoldSize34),
                AppSizedBox.h18,
                Row(
                  children: [
                    ResultBoxWidget(
                      result: '${results['result']}',
                      iconImage: Image.asset(
                        results['isNormal'] ? AppAssets.check : AppAssets.error,
                        height: 130,
                        width: 130,
                      ),
                    ),
                  ],
                ),
                AppSizedBox.h16,
                Text(
                  results['resultText'],
                  style: AppTextStyle.whiteBold800Size18,
                ),
                AppSizedBox.h16,
                Text(
                  'Your BMI is ${results['result']}, your weight is in ${results['bmiLevel']} category for adults of your heights',
                  style: AppTextStyle.whiteSize18,
                ),
                AppSizedBox.h16,
                Text(results['bmiLastInfo'], style: AppTextStyle.whiteSize18),
                AppSizedBox.h26,
                CalculateButtonWidget(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    text: 'Recalculate BMI')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
