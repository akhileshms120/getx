import 'package:http/http.dart' as http;

import '../Productmodule/models/product_model.dart';

class Apiservice{

  static var client=http.Client();
  //http.get(Uri.parse(someString))

 var  uri="https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie";

  Future<List<ProductModel>?>? fetchProducts()async{
    
   try{
    var response = await client.get(Uri.parse(uri));
    if(response.statusCode==200){
    var jsonString=response.body;
    return productFromJson(jsonString);
    
     }
   }catch(e){

   }
   
   
   }
  
}