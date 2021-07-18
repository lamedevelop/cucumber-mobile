import 'package:flutter/material.dart';

import 'package:cucumber_mobile/models/product.dart';
import 'package:cucumber_mobile/config/palette.dart' as palette;

class ProductListElem extends StatefulWidget {
  final Product product;

  const ProductListElem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  _ProductListElemState createState() => _ProductListElemState();
}

class _ProductListElemState extends State<ProductListElem> {
  @override
  Widget build(BuildContext context) {
    return _elemBuilder();
  }

  Widget _elemBuilder() {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            height: 125,
            width: 125,
            decoration: BoxDecoration(
              color: palette.Blue.PRIMARY_ICON,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.fill,
                height: 90.0,
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            child: Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                widget.product.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: palette.Black.PRIMARY,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            child: Text(
              widget.product.price.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontFamily: 'Bebas Neue',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
