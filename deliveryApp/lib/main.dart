import 'package:flutter/material.dart';
import 'package:flutter_application_1/food_bar.dart';
import 'package:flutter_application_1/models/food_models.dart';

import 'homePage.dart';

void main() => runApp(const DeliveryApp());

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
      // home: FoodBar(),
    );
  }
}

// ignore: camel_case_types

