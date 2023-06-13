import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/productmadel.dart';

class GridviewProduct extends StatelessWidget {
  const GridviewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: products[0].color,
      ),
    );
  }
}
