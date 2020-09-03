import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:httpuni/httpuniversity/model/httpuniversitiesmodel.dart';
import '../view/httpuniversities.dart';
import 'package:http/http.dart' as http;
import 'package:retrofit/retrofit.dart';

abstract class HttpUniViewModel extends State<HttpUni> {
  // Add your state and logic here
  final baseUrl = "https://universitydatabase-4deab.firebaseio.com/";

  List<HttpUniModel> httpuni = [];

  @override
  void initState() {
    super.initState();
    callItems();
  }

  Future<void> callItems() async {
    await getHttpUni();
  }

  Future<void> getHttpUni() async {
    final response = await http.get("$baseUrl/universiteler.json");
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List)
          httpuni = jsonBody.map((e) => HttpUniModel.fromJson(e)).toList();
        break;
      default:
    }
  }
}
