import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_management/controller/home_screen_controller.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    HomeScreenController controller = Get.put(
      HomeScreenController()
    );
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center
          ,
          children: [



            Obx((){
          print('observer');
              return Text(controller.counter.toString());
            }),
            ElevatedButton(onPressed: (){

              controller.counter++;

            }, child: Text('increment')),
          ],
        ),
      ),
    );
  }
}
