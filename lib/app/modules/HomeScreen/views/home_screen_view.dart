import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project_one/app/utils/styles.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle.darkblue,
        title: Obx(()=> Text(controller.count.value.toString())),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
          controller.increment();
        },child: Text("Add"),),
      ),
    );
  }
}
  