import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as https;

import 'Model/electronicsModel.dart';
import 'Model/jewleryModel.dart';

class Services {
  var status;
  /*List<String> category;
  Future<List<String>> getCategory() async {
    var url = 'https://fakestoreapi.com/products/categories';
    var response = await https.get(Uri.parse(url));
    var jsonString = response.body;
    category = categoryFromJson(jsonString);
    print(category);
    return category;
  }*/
  Future<List<Electronics>> getElectronics() async {
    var url = 'https://fakestoreapi.com/products/category/electronics';
    var response = await https.get(Uri.parse(url));
    var jsonString = response.body;
    List<Electronics> electronics = electronicsFromJson(jsonString);
    return electronics;
  }

  Future<List<Jewlery>> getJewlery() async {
    var url = 'https://fakestoreapi.com/products/category/jewelery';
    var response = await https.get(Uri.parse(url));
    var jsonString = response.body;
    List<Jewlery> jewlery = jewleryFromJson(jsonString);
    return jewlery;
  }

  void login(String email, String password) async {
    String url = 'https://fakestoreapi.com/auth/login';
    Map<String, String> headers = {'Content-Type': 'application/json'};
    final msg = jsonEncode({
      "username": email, "password": password
    });

    await https
        .post(Uri.parse(url), headers: headers, body: msg)
        .then((response) {
      status = response.body.contains('error');
      
        });
  }
}
