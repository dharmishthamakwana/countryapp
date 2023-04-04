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
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Container(
              height: 255,
              width: double.infinity,
              color: Colors.white70,
              child: Image.network(
                "${homeScreenProviderfalse!.CountryList[index].f1!.png}",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '${homeScreenProviderfalse!.CountryList[index].n1!.official}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              '${homeScreenProviderfalse!.CountryList[index].timezones}',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      Text("detailes:-  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 25)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Country status    :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].status}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("area                       :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].area}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("landlocked           :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].landlocked}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("continents           :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].continents}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("startOfWeek        :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].startOfWeek}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("fifa                         :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].fifa}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("latlng                    :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].latlng}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("unMember           :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].unMember}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("independent         :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].independent}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("capital                   :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].capital}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("region                    :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].region}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("subregion              :- ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22)),
                                Text(
                                    '${homeScreenProviderfalse!.CountryList![index].subregion}',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("alt:-",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25)),
                          Text(
                              '${homeScreenProviderfalse!.CountryList[homeScreenProviderfalse!.i].f1!.alt}',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18)),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("flag:-        ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25)),
                          Text(
                              '${homeScreenProviderfalse!.CountryList[index].flag}',
                              style: TextStyle(fontSize: 40)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
