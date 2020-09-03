import 'package:flutter/material.dart';

class HttpUniModel {
  String adi;
  String img;

  HttpUniModel({this.adi, this.img});

  HttpUniModel.fromJson(Map<String, dynamic> json) {
    adi = json['adi'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adi'] = this.adi;
    data['img'] = this.img;
    return data;
  }
}
