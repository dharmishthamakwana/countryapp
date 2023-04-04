import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/country_providr.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  HomeScreenProvider? homeScreenProviderfalse;
  HomeScreenProvider? homeScreenProvidertrue;

  @override
  Widget build(BuildContext context) {
    dynamic index = ModalRoute.of(context)!.settings.arguments;
    homeScreenProviderfalse =
        Provider.of<HomeScreenProvider>(context, listen: false);
    homeScreenProvidertrue =
        Provider.of<HomeScreenProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "${homeScreenProviderfalse!.CountryList[index].n1!.official}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                "${homeScreenProviderfalse!.CountryList[index].f1!.png}",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                "${homeScreenProviderfalse!.CountryList[index].n1!.official}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "${homeScreenProviderfalse!.CountryList[index].n1!.common} City",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Country Status      :-    ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[index].status}",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Continenes            :-    ",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[index].region}",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Independent          :-    ",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[index].independent}",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Population             :-    ",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[index].population}",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "Timezones             :-    ",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[index].timezones[0]}",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 5),
              child: Row(
                children: [
                  Text(
                    "area                        :-    ",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "${homeScreenProviderfalse!.CountryList[index].area}",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
