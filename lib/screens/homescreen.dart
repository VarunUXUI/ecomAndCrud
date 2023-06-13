// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_application_1/model/const.dart';
// import 'package:flutter_application_1/widget/listviewbuilder.dart';

// import '../model/productmadel.dart';
// import 'grid.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<String> tab = ["Hand Bag", "Jwerally", "Shoes", "Clothes", "TourBag"];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Page"),
//         backgroundColor: Colors.white,
//         elevation: 2,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: SvgPicture.asset("asset/search.svg",
//                   // ignore: deprecated_member_use
//                   color: const Color.fromARGB(255, 124, 124, 124))),
//           IconButton(
//               onPressed: () {},
//               icon: SvgPicture.asset(
//                 "asset/cart.svg",
//                 // ignore: deprecated_member_use
//                 color: const Color.fromARGB(255, 124, 124, 124),
//               )),
//         ],
//         leading: IconButton(
//             onPressed: () {}, icon: SvgPicture.asset("asset/back.svg")),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(9),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "More Items",
//               style: TextStyle(
//                   color: kkTextColor,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Listview(),
//             const SizedBox(
//               height: 10,
//             ),
//             //  GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
//             //  crossAxisSpacing: 2), itemBuilder: (context, index)=>).

//             Expanded(
//               child: Container(
//                 child: GridView.builder(
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 10,
//                         mainAxisSpacing: 10),
//                     itemBuilder: (context, index) => GridViews()),
//               ),
//             )

//             // GridView.builder(
//             //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             //         crossAxisCount: 2,
//             //         crossAxisSpacing: 10,
//             //         mainAxisSpacing: 10),
//             //     itemCount: products.length,
//             //     itemBuilder: (context, index) => Text(products[index].title))
//           ],
//         ),
//       ),
//     );
//   }

// //   Widget appbar() {
// //     return AppBar(
// //       title: const Text("Home Page"),
// //       backgroundColor: Colors.white,
// //       elevation: 2,
// //       actions: [
// //         IconButton(
// //             onPressed: () {},
// //             icon: SvgPicture.asset("asset/search.svg",
// //                 // ignore: deprecated_member_use
// //                 color: const Color.fromARGB(255, 124, 124, 124))),
// //         IconButton(
// //             onPressed: () {},
// //             icon: SvgPicture.asset(
// //               "asset/cart.svg",
// //               // ignore: deprecated_member_use
// //               color: const Color.fromARGB(255, 124, 124, 124),
// //             )),
// //       ],
// //       leading: IconButton(
// //           onPressed: () {}, icon: SvgPicture.asset("asset/back.svg")),
// //     );
// //   }
// // }

// // class GridviewImage extends StatelessWidget {
// //   const GridviewImage({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         Container(
// //           padding: EdgeInsets.all(10),
// //           width: 150,
// //           height: 180,
// //           decoration: BoxDecoration(
// //               color: products[0].color, borderRadius: BorderRadius.circular(8)),
// //           child: Image.asset(products[0].image),
// //         ),
// //         Padding(
// //           padding: const EdgeInsets.symmetric(vertical: 6),
// //           child: Text(
// //             products[0].title,
// //             style: TextStyle(
// //                 fontSize: 15,
// //                 fontWeight: FontWeight.w500,
// //                 color: Color.fromARGB(255, 97, 97, 97)),
// //           ),
// //         ),
// //         Text(
// //           "\$${products[0].price}",
// //           style: TextStyle(
// //               fontSize: 18,
// //               fontWeight: FontWeight.w500,
// //               color: Color.fromARGB(255, 24, 24, 24)),
// //         )
// //       ],
// //     );
// }
