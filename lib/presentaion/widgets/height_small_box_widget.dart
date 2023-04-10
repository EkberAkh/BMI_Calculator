import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/colors/app_colors.dart';
import '../../app/constants/app_paddings.dart';
import '../../app/constants/app_sizedbox.dart';

class HeightSmallBoxWidget extends StatefulWidget {

  HeightSmallBoxWidget({super.key});

  @override
  State<HeightSmallBoxWidget> createState() => _HeightSmallBoxWidgetState();
}

class _HeightSmallBoxWidgetState extends State<HeightSmallBoxWidget> {
  String dropdownValue = 'cm';

  List<String> weightUnits = ['cm', 'feet'];

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
              items: weightUnits.map((String weightUnits) {
                return DropdownMenuItem(
                  value: weightUnits,
                  child: Text(weightUnits),
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
