import 'package:covid19_tracking/widgets/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular', primaryColor: Colors.blue),
    home: HomePage(),
  ));
}
