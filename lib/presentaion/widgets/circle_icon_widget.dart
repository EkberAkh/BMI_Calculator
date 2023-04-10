import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleIconWidget extends StatelessWidget {
  Color color;
  CircleIconWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 5,
      child: FaIcon(
        FontAwesomeIcons.solidCircleCheck,
        color: color,
      ),
    );
  }
}
