

import 'package:get/get.dart';

class MyController extends GetxController{


  var count=0.obs;
  void increment(){
    count++;
   // update(['txCount']);//onlyt unique id will incremnet
  }



 @override
  void onInit(){
    super.onInit();
   // ever(count,(_)=> print(count)); //any change occur in count ever worker called
   //everAll([count], (_)=>print(count));// everAll  can change list of varible

   //once(count, (_)=>print(count));//only once it will print


  //  debounce(count, (_)=>print(count),time: Duration(seconds: 1)); //it only trigger when all the activity is done

  


  }


}