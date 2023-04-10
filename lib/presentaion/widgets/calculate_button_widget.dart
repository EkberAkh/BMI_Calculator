import 'package:flutter/material.dart';

import '../../app/colors/app_colors.dart';
import '../../app/colors/app_text_style.dart';
import '../../app/constants/app_paddings.dart';

class CalculateButtonWidget extends StatelessWidget {
  final Function() onTap;
  
  final String text;
  const CalculateButtonWidget(
      {super.key, required this.onTap, required this.text,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
      child: Container(
        alignment: Alignment.center,
        padding: AppPaddings.a16,
        decoration: BoxDecoration(
          color: AppColors.greenColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: AppTextStyle.whiteBold800,
        ),
      ),
    );
  }
}
