import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_management/navigation_screen.dart';
import 'package:get_x_state_management/list_screen.dart';

import 'home_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home:ListScreen(),
      // home: HomeScreen(),
    );
  }
}
