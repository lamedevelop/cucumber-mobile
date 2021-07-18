import 'package:flutter/material.dart';

import 'package:cucumber_mobile/widgets/bars/bars.dart';
import 'package:cucumber_mobile/config/palette.dart' as palette;

class CustomScaffold extends StatelessWidget {
  final bool hasTopBar;
  final bool hasBottomBar;
  final bool hasShortTopBar;
  final Widget body;

  const CustomScaffold({
    Key? key,
    required this.body,
    this.hasTopBar = true,
    this.hasBottomBar = true,
    this.hasShortTopBar = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          body,
          hasTopBar ? _topBarBuilder(context) : Container(child: null),
          hasBottomBar ? _bottomBarBuilder(context) : Container(child: null),
        ]),
      ),
      drawer: hasTopBar && !hasShortTopBar ? _drawerBuilder(context) : null,
    );
  }

  Widget _topBarBuilder(BuildContext context) {
    return Positioned(
      top: 0,
      child: hasShortTopBar ? ShortTopBar() : MainTopBar(),
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget _bottomBarBuilder(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: BottomBarCustom(),
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget _drawerBuilder(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
      child: Drawer(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: palette.Black.PRIMARY,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: ListView(
            children: [
              Text(
                'Test row',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
