import 'package:flutter/material.dart';

import 'package:cucumber_mobile/config/palette.dart' as palette;

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.name,
    required this.volume,
    required this.price,
  }) : super(key: key);

  final String name;
  final String volume;
  final String price;

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: palette.Black.PRIMARY,
            ),
          ),
          SizedBox(height: 5),
          Text(
            widget.volume,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: palette.Black.PRIMARY_LIGHT,
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: palette.Black.PRIMARY,
            ),
            child: Text(
              widget.price,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Bebas Neue',
                height: 1,
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
