import 'package:flutter/material.dart';

class WorldWide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true, //dont want the worldwide page to be scrollable
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2),
        children: <Widget>[
          Status(
            statusColor: Colors.red[100],
            textColor: Colors.red,
            title: 'CONFIRMED',
            count: '2000',
          ),
          Status(
            statusColor: Colors.blue[100],
            textColor: Colors.blue,
            title: 'ACTIVE',
            count: '2000',
          ),
          Status(
            statusColor: Colors.green[100],
            textColor: Colors.green,
            title: 'RECOVERED',
            count: '2000',
          ),
          Status(
            statusColor: Colors.grey[100],
            textColor: Colors.grey,
            title: 'DEATHS',
            count: '2000',
          ),
        ],
      ),
    );
  }
}

class Status extends StatelessWidget {
  final Color statusColor;
  final Color textColor;
  final String title;
  final String count;

  //created a constructor
  const Status(
      {Key key, this.statusColor, this.textColor, this.title, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context)
        .size
        .width; //this will help me to get  the size of the screen

    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: statusColor,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //aligns the confimed cases to center
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
          ),
          Text(
            count,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
          )
        ],
      ),
    );
  }
}
