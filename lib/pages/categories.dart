import 'package:flutter/material.dart';

import 'package:cucumber_mobile/widgets/custom_scaffold.dart';
import 'package:cucumber_mobile/config/palette.dart' as palette;
import 'package:shimmer/shimmer.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: GridView.count(
        padding: EdgeInsets.only(left: 40, right: 40, top: 57),
        crossAxisCount: MediaQuery.of(context).size.width ~/ 220,
        children: List.generate(
          6,
          (index) => _emptyCategoryItemBuilder(index),
        ),
      ),
    );
  }

  Widget _emptyCategoryItemBuilder(index) {
    final Color _baseItemColor =
        index == 0 ? palette.Blue.PRIMARY_COUNT : palette.Blue.PRIMARY_ICON;
    return Center(
      child: Shimmer.fromColors(
        baseColor: _baseItemColor,
        highlightColor: _baseItemColor.withOpacity(0.85),
        child: Container(
          width: 130,
          height: 165,
          decoration: BoxDecoration(
            color: _baseItemColor,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
