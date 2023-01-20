import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/apimodule/api_service.dart';
import 'package:second_project/commonmodule/AppColor.dart';
import 'package:second_project/commonmodule/AppString.dart';

import 'Productmodule/views/product_list_view.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  Apiservice apiservice =Apiservice();
  initState(){
    apiservice.fetchProducts();
  }



  @override
  Widget build(BuildContext context) {
    //apiservice.fetchProducts();
    return GetMaterialApp(
      title:AppString.fetchApiData ,
      theme: ThemeData(primarySwatch:AppColor.purpleColor),
      home: ProductListView(),
    );
  }
}