import 'dart:convert';

import 'package:covid19_tracking/chopper/model/countries_model.dart';
import 'package:covid19_tracking/chopper/model/worldwide_model.dart';
import 'package:covid19_tracking/chopper/post_chopper_service.dart';
import 'package:covid19_tracking/widgets/countries.dart';
import 'package:covid19_tracking/widgets/worldwide.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:covid19_tracking/myConfigs/config.dart';

import 'affected.dart';
import 'info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WorldwideModel worldwideModel = WorldwideModel();
  List<CountriesModel> countriesModel;
  List CountryData;

  void fetchWorldData() async {
    final myPostApiService = PostApiService.create();

    final response = await myPostApiService.getAllWorldWideData();
    setState(() {
      worldwideModel = WorldwideModel.fromJson(response.body);

      print("title: ${worldwideModel.active}");
    });
  }

  void fetchCountryData() async {
    http.Response response =
        await http.get('https://corona.lmao.ninja/v2/countries');

    setState(() {
      CountryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchWorldData();
    fetchCountryData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY COVID-19 TRACKER'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //aligns to left
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              height: 100,
              child: Text(
                myDataSource.myquote,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              color: Colors.deepPurpleAccent,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Worldwide',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyCountries()));
                      },
                      child: Text(
                        'Select Country',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            worldwideModel == null
                ? Center(child: CircularProgressIndicator())
                : WorldWide(
                    worldwideModel: worldwideModel,
                  ), //if worldwidemodel is null show a circular progressIndicator else show worldwidepage

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Most Affected Countries',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CountryData == null
                ? Center(child: CircularProgressIndicator())
                : Affected(
                    CountryData: CountryData,
                  ),
            Information(),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  'TUKO PAMOJA KWA HUU VITA WA KUPAMBANA NA COVID-19',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
