import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_colors.dart';
import '../../app/constants/app_paddings.dart';

class WhiteBoxWidget extends StatelessWidget {
  void Function() onPlus;
  void Function() onMinus;
  final int value;
   WhiteBoxWidget({
    super.key,
    required this.onPlus,
    required this.onMinus,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
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
              onTap:onMinus ,
              child: FaIcon(FontAwesomeIcons.circleMinus),
            ),
            Text('$value'),
            GestureDetector(
              onTap: onPlus,
              child: FaIcon(FontAwesomeIcons.circlePlus),
            ),
          ],
        ),
      ),
    );
  }
}
