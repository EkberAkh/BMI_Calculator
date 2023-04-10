import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonWidget extends StatelessWidget {
final IconData icon;
  const IconButtonWidget({ super.key, required this.icon });

   @override
   Widget build(BuildContext context) {
       return IconButton(onPressed: (){}, icon:  FaIcon(icon));
  }
}