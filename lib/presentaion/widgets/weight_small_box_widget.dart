import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_colors.dart';
import '../../app/constants/app_paddings.dart';
import '../../app/constants/app_sizedbox.dart';

class WeightSmallBoxWidget extends StatefulWidget {

  WeightSmallBoxWidget({super.key});

  @override
  State<WeightSmallBoxWidget> createState() => _WeightSmallBoxWidgetState();
}

class _WeightSmallBoxWidgetState extends State<WeightSmallBoxWidget> {
  String dropdownValue = 'kg';

  List<String> heightUnits = ['kg', 'lbs'];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.center,
          padding: AppPaddings.a4,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButton(
              items: heightUnits.map((String heightUnits) {
                return DropdownMenuItem(
                  value: heightUnits,
                  child: Text(heightUnits),
                );
              }).toList(),
              value: dropdownValue,
              alignment: Alignment.centerLeft,
               icon: FaIcon(FontAwesomeIcons.chevronDown),
               iconSize: 15,
              onChanged:  (String? newValue) { 
                setState(() {
                  dropdownValue = newValue!;
                });},),),
    );
  }
}
