import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/home_page_body_widget.dart';
import '../widgets/icon_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButtonWidget(icon: FontAwesomeIcons.bars),
        actions: const [IconButtonWidget(icon: FontAwesomeIcons.bell)],
      ),
      body: const HomePageBodyWidget(),
    );
  }
}
