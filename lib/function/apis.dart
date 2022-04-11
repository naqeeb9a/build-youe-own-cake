import 'dart:convert';

import 'package:http/http.dart' as http;


import '../utils/constants.dart';

class Apis {
  static const String baseUrl = "buildyourcake.mtechtesting.com";
  static const String version = "api/";
  static const String cake = "cake";
  static const String buildCake = "buildcake";
  predefinedCakeFunc() async {

    var url = Uri.http(baseUrl, version + cake);
    print(url);

    final response = await http.get(
      url,
      headers: headers,
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      var paredData=jsonDecode(response.body);
      print(paredData);
      return paredData["data"];
    } else {
      return "Error";
    }
  }

  buildCakeFunc() async {


    var url = Uri.http(baseUrl, version + buildCake);

    final response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)["data"];
    } else {
      return jsonDecode(response.body)["data"];
    }
  }
}
