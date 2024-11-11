import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x_state_management/controller/navigation_controller.dart';

class NavigationScreen extends StatelessWidget {
 NavigationScreen({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body:Obx((){
        print('body');

        return controller.screens[controller.selectedIndex.value  ];
      }),
      bottomNavigationBar: Obx((){
        print('bottom nav bar');
        return NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value= index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        );
      }),
    );
  }
}
