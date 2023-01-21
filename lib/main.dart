import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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

class HomeScreen extends StatelessWidget {
  TextEditingController textController =TextEditingController();

  var storage=GetStorage();
  var readString="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email validation"),

      ),
      body: Column(
        children: [
          TextField(
            controller:textController ,

          ),
          ElevatedButton(onPressed: (){
            if(GetUtils.isEmail(textController.text)){
              storage.write("email", textController.text);
            }else{
              Get.snackbar("Incorrect Email", "Please Provide correct Email");
            }
          }, child: Text("write")),
          ElevatedButton(onPressed: (){
            readString=storage.read('email').to;
          }, child: Text("Read")),
          Obx(() => Text(readString),)

        ],
      )
    );
  }
}

//var listen=storage.listen()   it fire when email changed
//sorage.removeListen(listen) dispose method
//storage.listenKey('email',key) only listen for specfic key
//storage.remove('email') for remove
//storage.erase() erase the container

//GetStorgae g= GetStorage('MyStorage');
//await GetStorage.init('MYStprage')
