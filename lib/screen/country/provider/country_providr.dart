import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/country_modal.dart';

class HomeScreenProvider extends ChangeNotifier {
  List<dynamic> CountryList = [];
  int i = 0;
  int imgindex = 0;
  CountryModel? countryModel;

  void change(int index) {
    i = index;
    notifyListeners();
  }

  Future<void> FormJson() async {
    String jsonString = await rootBundle.loadString("assets/json/country.json");

    var Json = jsonDecode(jsonString);

    CountryList = Json.map((e) => CountryModel().nameFromJson(e)).toList();
    notifyListeners();
  }
}
