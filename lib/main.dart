
import 'package:countryapp/screen/country/provider/country_providr.dart';
import 'package:countryapp/screen/country/view/countryDetail_Screen.dart';
import 'package:countryapp/screen/country/view/country_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'detail': (context) => DetailScreen(),
        },
      ),
    ),
  );
}