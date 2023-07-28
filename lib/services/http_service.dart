import 'dart:convert';
import 'package:http/http.dart';
import '../models/post_model.dart';

class Network{
  static final String BASE = 'zumda-client.devdata.uz';
  static Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8'
  };

  /* Http APIs*/
  static String API_LIST = "/orders";
  static String API_CREATE = "/orders";
  static String API_UPDATE = "/orders"; // {id}
  static String API_DELETE = "/orders"; // {id}

 /*Http Requests*/
  static Future<String?> GET(String api, Map<String,String> params)async{
    var uri = Uri.https(BASE,api,params);
    var response = await get(uri, headers: headers);
    if(response.statusCode ==200){
      return response.body;
    }
    return null;
  }

  static Future<String?> POST(String api, Map<String,String> params)async{
    var uri = Uri.https(BASE,api);
    var response = await post(uri, headers: headers, body: jsonEncode(params));
    if(response.statusCode ==200 || response.statusCode ==201){
      return response.body;
    }
    return null;
  }

  static Future<String?> PUT(String api, Map<String,String> params)async{
    var uri = Uri.https(BASE,api);
    var response = await put(uri, headers: headers, body: jsonEncode(params));
    if(response.statusCode ==200 || response.statusCode ==202){
      return response.body;
    }
    return null;
  }

  static Future<String?> DEL(String api, Map<String,String> params)async{
    var uri = Uri.https(BASE,api,params);
    var response = await delete(uri, headers: headers);
    if(response.statusCode ==200){
      return response.body;
    }
    return null;
  }

  /* Http Params*/
  static Map<String,String> paramsEmpty(){
    Map<String, String> params = Map();
    return params;
  }

  static Map<String, String> paramsCreate(Post post){
    Map<String, String> params = Map();
    params.addAll({
      'title': post.title!,
      'body': post.body!,
      'userId':post.userId.toString(),
    });
    return params;
  }

  static Map<String, String> paramsUpdate(Post post){
    Map<String, String> params = Map();
    params.addAll({
      'id': post.id.toString(),
      'title': post.title!,
      'body': post.body!,
      'userId':post.userId.toString(),
    });
    return params;
  }



}