import 'package:covid19_tracking/chopper/model/countries_model.dart';
import 'package:flutter/material.dart';

class Affected extends StatelessWidget {
  //final List<CountriesModel> countriesModel;

  final List CountryData;

  const Affected({Key key, this.CountryData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
             margin: EdgeInsets.symmetric(horizontal:10,vertical:5),
            child: Row(
              children: <Widget>[
                Image.network(
                  CountryData[index]['countryInfo']['flag'],
                  height: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(CountryData[index]['country'],
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Deaths: ' + CountryData[index]['deaths'].toString(),
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}