// 



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:second_project/myController.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  
  MyController myController =Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("UNIQUE ID")),body: Column(
      children: [
        GetBuilder<MyController>(
          id: 'txCount',//unique id
          builder: (controller){
          return Text("The value is ${controller.count}");
        }),
        GetBuilder<MyController>(
          
          builder: (controller){
          return Text("The value is ${controller.count}");
        }),
        ElevatedButton(onPressed: (){
          myController.increment();
        }, child: Text("increment"))
      ],
    ),);
  }
}