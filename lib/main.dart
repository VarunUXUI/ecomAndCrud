import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/crudOperation.dart';
import 'package:flutter_application_1/screens/grid.dart';
import 'package:flutter_application_1/screens/homeScreen_new.dart';
import 'package:flutter_application_1/screens/homescreen.dart';

import 'model/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true),

      debugShowCheckedModeBanner: false,
      home: const CurdOperation(),
    );
  }
}
