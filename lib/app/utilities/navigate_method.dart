import 'package:flutter/material.dart';

import '../../presentaion/pages/result_page.dart';

void _navigateToNextScreen(BuildContext context, Map<String, dynamic> results) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => ResultPage(
        results: results,
      ),
    ),
  );
}