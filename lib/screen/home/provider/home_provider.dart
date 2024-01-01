import 'package:bhagavad_gita_app/screen/home/model/home_model.dart';
import 'package:bhagavad_gita_app/util/json_helper.dart';
import 'package:bhagavad_gita_app/util/share_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  List<HomeModel> bhagavadList = [];

  Future<void> getData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<HomeModel> l1 = await jsonHelper.homeList();
    bhagavadList = l1;
    notifyListeners();
  }

  //theme
  bool islight = false;

  void changeTheme() async {
    ShareHelper shr = ShareHelper();
    bool? istheme = await shr.getTheme();
    islight = istheme ?? false;
    notifyListeners();
  }

  //language
  String lag='Gujarati';
  void language(String value) {
    lag=value;
    notifyListeners();
  }
}
