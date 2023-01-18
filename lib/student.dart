import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:second_project/main.dart';
import 'package:second_project/myGetxController.dart';

class StudentScreen extends StatelessWidget {
  
 // var student =Student(name: "tom",age: 25).obs;
 var student =Student();

  GetxCont controlle =Get.put(GetxCont());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(()=> Text(controlle.student.name.toString())),// for individual varible
        // Obx(()=> Text(student.value.name)),
         // ElevatedButton(onPressed:(){student.name.value=student.name.value.toUpperCase(); }, child: Text("UpperCase")),for individual varible
          //Text(student.age.toString()),for individual varible
          ElevatedButton(onPressed: (){
            // student.update((val) {
            //   val!.name=val.name.toString().toUpperCase();
            // });
            controlle.convertToUpperCase();
          }, child: Text("Uppercase"))
        ],
      ));
  }
}

