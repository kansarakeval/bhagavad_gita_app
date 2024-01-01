import 'dart:convert';

import 'package:bhagavad_gita_app/screen/home/model/home_model.dart';
import 'package:flutter/services.dart';

class JsonHelper{
Future<List<HomeModel>> homeList() async {
  var jsonString=await rootBundle.loadString("assets/json/bhagavad.json");
  List l1=jsonDecode(jsonString);
  List<HomeModel> bhList=l1.map((e) => HomeModel.mapToModel(e)).toList();
  return bhList;
}
}