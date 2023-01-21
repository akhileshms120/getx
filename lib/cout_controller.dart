import 'package:get/get.dart';

class CountControler extends GetxController{

  var count=0.obs;

  void increment(){
    count++;
  }
}