import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:second_project/commonmodule/AppString.dart';

import '../controllers/product_controller.dart';

class ProductListView extends StatelessWidget {
  
  final ProductController productController =Get.put(ProductController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.productList),
      ),
      body: Obx(() {
        if(productController.isLoading.value){
          return Center(child: CircularProgressIndicator(),);
        }
        else{
          return ListView.builder(itemCount: productController.productList.length,itemBuilder: ((context, index) {
            return Column(
              children: [
                Card(
                  child: Row(
                    children: [
                      Container(
                        child: Image.network(productController.productList[index].imageLink.toString(),height: 100,width: 100,)
                      ),
                      SizedBox(width: 100,),
                      Container(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

  
                          Text(productController.productList[index].name.toString()),
                          Text(productController.productList[index].brand.toString()),
                          Text(productController.productList[index].category.toString())
                        ],
                      ))
                    ],
                  ),
                )
              ],
            );
          }),);
        }
      }),
    );
  }
}