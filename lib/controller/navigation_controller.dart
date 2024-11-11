import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {


  RxInt selectedIndex = 0.obs ;
  List<Widget> screens = [
    Text(
      'home',
      style: TextStyle(fontSize: 30),
    ),
    Text(
      'settings',
      style: TextStyle(fontSize: 30),
    )
  ];

}