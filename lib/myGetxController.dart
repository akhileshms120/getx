import 'package:get/get.dart';
import 'package:second_project/main.dart';

class GetxCont extends GetxController{

var student =Student();

void convertToUpperCase(){
  student.name.value=student.name.value.toUpperCase();
}
}