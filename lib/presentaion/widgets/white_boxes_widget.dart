
import 'package:bmi_calc_2/presentaion/widgets/white_box_widget.dart';
import 'package:flutter/material.dart';

import '../../app/constants/app_sizedbox.dart';

class WhiteBoxesWidget extends StatelessWidget {
  void Function() onMinus;
  void Function() onPlus;
  final int numberValue;
  
  WhiteBoxesWidget(
      {super.key,
      required this.numberValue,
    
      required this.onMinus,
      required this.onPlus});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        
        children: [
          WhiteBoxWidget(
            value: numberValue,
            onMinus: onMinus,
            onPlus: onPlus,
          ),
          AppSizedBox.w22,
          
        ],
      ),
    );
  }
}
