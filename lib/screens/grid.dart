import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/productmadel.dart';
import 'package:flutter_application_1/screens/grid.dart';

class GridViews extends StatelessWidget {
  GridViews({required this.press, required this.product, super.key});
  final Product product;
  void Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                press();
              },
              child: Container(
                padding: EdgeInsets.all(10),
                // width: 150,
                // height: 180,
                decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              product.title,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 97, 97, 97)),
            ),
          ),
          Text(
            "\$ ${product.price}",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 24, 24, 24)),
          )
        ],
      ),
    );
  }
}
