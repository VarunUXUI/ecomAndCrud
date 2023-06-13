import 'package:flutter/material.dart';

import '../model/productmadel.dart';

class colorsOption extends StatelessWidget {
  const colorsOption(
      {required this.color,
      super.key,
      required this.product,
      this.selectedColor = false});
  final Color color;
  final Product product;
  final bool selectedColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: selectedColor == true ? color : Colors.transparent,
            )),
        child: DecoratedBox(
            decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
      ),
    );
  }
}
