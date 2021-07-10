import 'package:flutter/material.dart';
import 'package:cucumber_mobile/models/product.dart';

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
    return Center(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration:
                BoxDecoration(color: Color(0xFF2D538A), shape: BoxShape.circle),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            width: MediaQuery.of(context).size.width * 0.30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4)
            ),
            child: Text(
              widget.product.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            widget.product.price,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: 'Bebas Neue',
            ),
          ),
        ],
      ),
    );
    ;
  }
}
