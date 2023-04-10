import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_colors.dart';
import '../../app/constants/app_paddings.dart';

class AgeBoxWidget extends StatelessWidget {
  final int age;
  void Function() onMinus;
  void Function() onPlus;

  AgeBoxWidget(
      {super.key,
      required this.age,
      required this.onMinus,
      required this.onPlus});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Container(
        padding: AppPaddings.a16,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onMinus,
              child: const FaIcon(FontAwesomeIcons.circleMinus),
            ),
            Text('$age'),
            GestureDetector(
              onTap: onPlus,
              child: const FaIcon(FontAwesomeIcons.circlePlus),
            ),
          ],
        ),
      ),
    );
  }
}
