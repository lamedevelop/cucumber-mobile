import 'package:flutter/material.dart';

import 'package:cucumber_mobile/widgets/bars/bars.dart';
import 'package:cucumber_mobile/widgets/home_page/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            child: WelcomeMessage(
                'Привет. У нас етсь доставка, чтобы ей воспользоваться-укажите свой номер телефона.'),
          ),
          Positioned(
            bottom: 0,
            child: BottomBarCustom(),
            width: MediaQuery.of(context).size.width,
          ),
        ]),
      ),
    );
  }
}
