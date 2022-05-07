import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:let_practice/model/data_model.dart';

class DataServices{
  String baseUrl = 'http://mark.bslmeiyu.com/api';
  Future<List<DataModel>> getInfo() async {
    var apiUrl = '/getplaces';
    // to get data from the server
    http.Response res = await http.get(Uri.parse(baseUrl+apiUrl));
    try{
      //statuscode == response correct code
      if(res.statusCode == 200){
        //Decode the data
        //we need just the body of the data
        List<dynamic> list = json.decode(res.body);
        print(list);
        //converting to map
        //getting block by block
        //converting to list
        return list.map((e) => DataModel.fromJson(e)).toList();
      }else{
        return <DataModel>[];
      }
    }catch(e){
      print(e);
      return <DataModel>[];
    }
  }
}