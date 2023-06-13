import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/productmadel.dart';

import '../widget/productbody.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({required this.product, super.key});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
          backgroundColor: product.color,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white)),
          // title: Text(product.title),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_rounded, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_checkout_outlined,
                  color: Colors.white,
                )),
          ]),
      body: Body(
        product: product,
      ),
    );
  }
}
