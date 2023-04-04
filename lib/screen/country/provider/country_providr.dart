import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/country_modal.dart';

class HomeScreenProvider extends ChangeNotifier {
  List<dynamic> CountryList = [];

  Future<void> FormJson() async {
    String jsonString = await rootBundle.loadString("assets/json/country.json");

    var Json = jsonDecode(jsonString);
    CountryList = Json.map((e) => CountryModal().CountryFromJson(e)).toList();
    notifyListeners();
  }
}
