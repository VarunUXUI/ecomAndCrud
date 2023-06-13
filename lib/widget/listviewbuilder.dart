import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

// void tabMove(int index){
//   if(index=Tab)
// }
class _ListviewState extends State<Listview> {
  List<String> tab = [
    "Hand Bag",
    "Jwerally",
    "Shoes",
    "Clothes",
    "TourBag",
    "Men Shirt",
    "Men pants"
  ];
  int indexNumber = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: ListView.builder(
          itemCount: tab.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => listviewtext(index)),
    );
  }

  Widget listviewtext(int index) => GestureDetector(
        onTap: () {
          setState(() {
            indexNumber = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 12, top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Flex(
              //   direction: Axis.horizontal,
              // ),
              Text(
                tab[index],
                style: TextStyle(
                    color: indexNumber == index
                        ? Color.fromARGB(255, 29, 68, 175)
                        : const Color.fromARGB(122, 0, 0, 0)),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                  height: 3,
                  width: 40,
                  color: indexNumber == index
                      ? Color.fromARGB(255, 17, 57, 167)
                      : const Color.fromARGB(0, 0, 0, 0))
            ],
          ),
        ),
      );
}
