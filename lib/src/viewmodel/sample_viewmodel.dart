import 'dart:convert' as convert;
import 'package:belajar_flutter/src/model/sample_model.dart';
import 'package:http/http.dart' as http;

class SampleViewModel {
  Future<dynamic> getUser() async {
    try {
      var response = await http.get('https://reqres.in/api/users',
          headers: {"Accept": "application/json"});

      switch (response.statusCode) {
        case 200:
          var data = convert.jsonDecode(response.body);
          // print(data['data']);
          return data['data'];
          break;
        default:
          print("error check your code or connection");
      }
    } catch (e) {
      print("error catch $e");
      return null;
    }
  }
}
