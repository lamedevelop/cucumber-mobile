import 'package:flutter/material.dart';

import 'package:cucumber_mobile/config/palette.dart' as palette;

class WelcomeMessage extends StatelessWidget {
  final String _message;

  const WelcomeMessage(this._message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 206, left: 20, right: 20),
      padding: EdgeInsets.only(top: 23, bottom: 68),
      decoration: BoxDecoration(
        color: palette.Blue.PRIMARY_ICON,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        _message,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
