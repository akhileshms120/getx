// 


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:second_project/student.dart';

//////////////////////////////////state Manger///////////////////
///
///
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

  var student=Student();
 
 //var countNumber=RxString(''); //one method
//  var countNumber=Rx<String>(''); //second method

// var number=RxNum(0);

 var count =0.obs;

 var name ="Tom".obs;

 increment(){
  count++;
}

 decrement(){
  count--;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Mangament")),
      body: Column(
        children: [
          Obx(()=>Text("Count Value is $count  $name")),
          ElevatedButton(onPressed: (){
            increment();
          }, child: Text("Increment")),
             ElevatedButton(onPressed: (){
              decrement();
             }, child: Text("Decrement")),
               ElevatedButton(onPressed: (){
               
               Get.to(()=>StudentScreen());
             }, child: Text("Student Page"))
        ],
      ),
    );
  }
}

class Student{

  // var name= "Tom".obs; //individual value is reactive 
  // var age =25.obs;

  var name;
  var age;

  Student({ this.name, this.age});
}