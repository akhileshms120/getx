import 'package:get/get.dart';
import 'package:second_project/apimodule/api_service.dart';

import '../models/product_model.dart';

class ProductController extends GetxController{

  var isLoading =true.obs;

  var productList=  <ProductModel>[].obs;

  Apiservice apiservice =Apiservice();


  void onInit(){

    fetchProducts();
    super.onInit();
  }


  void fetchProducts()async{

    try{
     isLoading(true);
     var product = await apiservice.fetchProducts();
     if(product !=null){
     productList.assignAll(product);
     }
    }finally{
    isLoading(false);
    }
  }
}