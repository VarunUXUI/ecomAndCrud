import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/productdetail.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/model/productmadel.dart';
import 'package:flutter_application_1/widget/listviewbuilder.dart';

import 'grid.dart';

class HomeScreenNew extends StatelessWidget {
  const HomeScreenNew({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tab = ["Hand Bag", "Jwerally", "Shoes", "Clothes", "TourBag"];

    void detailPage(Product product) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext) => ProductDetailPage(
                product: product,
              )));
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 33, 130, 194),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_rounded, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_checkout_outlined,
                    color: Colors.white)),
            SizedBox(
              width: 12,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "More Categaries",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(height: 25, child: Listview()),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          childAspectRatio: 0.75,
                          crossAxisSpacing: 4),
                      itemCount: products.length,
                      itemBuilder: (context, index) => GridViews(
                            product: products[index],
                            press: () {
                              detailPage(products[index]);
                            },
                          )),
                ),
              )
            ],
          ),
        ));
  }
}
