import 'package:flutter/material.dart';

import 'package:cucumber_mobile/config/palette.dart' as palette;

class ProductWideDescription extends StatefulWidget {
  const ProductWideDescription(
    this.description, {
    Key? key,
  }) : super(key: key);

  final String description;

  @override
  _ProductWideDescriptionState createState() => _ProductWideDescriptionState();
}

class _ProductWideDescriptionState extends State<ProductWideDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Описание',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: palette.Black.PRIMARY,
            ),
          ),
          SizedBox(height: 5),
          Text(
            widget.description,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: palette.Black.PRIMARY,
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
