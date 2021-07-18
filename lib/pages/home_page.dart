import 'package:flutter/material.dart';

import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:cucumber_mobile/widgets/home_page/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: _welcomeMessageBuilder(),
      hasTopBar: false,
      hasDrawer: false,
    );
  }

  Widget _welcomeMessageBuilder() {
    return Positioned(
      top: 0,
      width: MediaQuery.of(context).size.width,
      child: WelcomeMessage(
          'Привет. У нас етсь доставка, чтобы ей воспользоваться-укажите свой номер телефона.'),
    );
  }
}
