import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop/CONSTANTS/constants.dart';
import 'package:shop/MODELS/model.dart';

class service{
  Future<Product> getProduct() async{
    var client = http.Client();
    var product;

    var uri = Uri.parse(ApiConstants.baseUrl);
try{    
    var response = await client.get(uri);
    if(response.statusCode == 200){
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      product = Product.fromJson(jsonMap);
      return product;
    }
  }
  catch(Exception){
    return product;
  }    
    return product;
  }
}