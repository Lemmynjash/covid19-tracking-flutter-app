import 'package:covid19_tracking/myConfigs/config.dart';
import 'package:flutter/material.dart';

class FAQs extends StatelessWidget {
  const FAQs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 FAQs'),
      ),
      body: ListView.builder(
          itemCount: myDataSource.questionAnswers.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(
                myDataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(myDataSource.questionAnswers[index]['answer']),
                )
              ],
            );
          }),
    );
  }
}
