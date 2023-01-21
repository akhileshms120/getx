import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:second_project/cout_controller.dart';

void main(){
  GetStorage.init();
  runApp(MyApp());
}





class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends GetView<CountControler> {
  TextEditingController textController =TextEditingController();

  var storage=GetStorage();
  var readString="";




  @override
  Widget build(BuildContext context) {
    Get.put(CountControler());
    return Scaffold(
      appBar: AppBar(
        title: Text("GetView"),

      ),
      body: Column(
        children: [
          TextField(
            controller:textController ,

          ),
          ElevatedButton(onPressed: (){
           controller.increment();
          }, child: Text("Increment")),
          ElevatedButton(onPressed: (){
            readString=storage.read('email').to;
          }, child: Text("Read")),
          Obx(() => Text(controller.count.toString()),)


        ],
      )
    );
  }
}

