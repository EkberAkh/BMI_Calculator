import 'package:flutter/material.dart';

import '../../app/colors/app_colors.dart';
import '../../app/constants/app_paddings.dart';

class BottomCardWidget extends StatelessWidget {

  const BottomCardWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
        padding: AppPaddings.v32,
        decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const Text('Weight'),
            
          ],
        ),
      );
  }
}