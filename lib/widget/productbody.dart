import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/productmadel.dart';
import 'package:flutter_application_1/widget/productImageTitle.dart';

import 'ItemAdding.dart';
import 'addCartName.dart';
import 'colorswitch.dart';

class Body extends StatelessWidget {
  const Body({required this.product, super.key});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20, right: 20),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(32))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Colors"),
                                Row(
                                  children: [
                                    colorsOption(
                                      color: product.color,
                                      product: product,
                                      selectedColor: true,
                                    ),
                                    colorsOption(
                                        color:
                                            Color.fromARGB(255, 177, 19, 116),
                                        product: product),
                                    colorsOption(
                                        color: Colors.deepPurple,
                                        product: product),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "Size\n",
                                              style: TextStyle(
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: product.size.toString(),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w700))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(product.description,
                            style: TextStyle(fontSize: 16, wordSpacing: 1),
                            softWrap: true,
                            textScaleFactor: 1,
                            selectionColor: Colors.deepOrange,
                            locale: Locale("CH")),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      AddingButton(),
                      SizedBox(
                        height: 130,
                      ),
                      AddCartButton()
                    ],
                  ),
                ),
                ProductImageTitle(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
