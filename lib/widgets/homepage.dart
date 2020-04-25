import 'package:covid19_tracking/config/config.dart';
import 'package:covid19_tracking/widgets/worldwide.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Map WorldData;

/* void fetchWorldData(){
  setState(() {
  WorldData=  getAllWorldWideData().
  });
} */

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
              child: Text(
                'Worldwide',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            WorldWide()
          ],
        ),
      ),
    );
  }
}
