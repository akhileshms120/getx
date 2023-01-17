// 


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

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
    return GetMaterialApp();
  }
}
class HomeScreen extends StatelessWidget {
 
 //var countNumber=RxString(''); //one method
//  var countNumber=Rx<String>(''); //second method

 var number=RxNum(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("State Mangament")),
      body: Column(
        children: [
          Obx(()=>Text("Count Value is 0")),
          ElevatedButton(onPressed: (){}, child: Text("Increment")),
             ElevatedButton(onPressed: (){}, child: Text("Decrement"))
        ],
      ),
    );
  }
}