import 'package:flutter/material.dart';
import 'package:mypart1/Color.dart';
import 'package:mypart1/Homepage/homepage_sceen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ice',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomeScreen(),
    );
  }
}
