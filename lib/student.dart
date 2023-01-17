import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:second_project/main.dart';

class StudentScreen extends StatelessWidget {
  
  var student =Student(name: "tom",age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
         // Obx(()=> Text(student.name.value)), for individual varible
         Obx(()=> Text(student.value.name)),
         // ElevatedButton(onPressed:(){student.name.value=student.name.value.toUpperCase(); }, child: Text("UpperCase")),for individual varible
          //Text(student.age.toString()),for individual varible
          ElevatedButton(onPressed: (){
            student.update((val) {
              val!.name=val.name.toString().toUpperCase();
            });
          }, child: Text("Uppercase"))
        ],
      ));
  }
}

