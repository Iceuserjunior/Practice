import 'package:flutter/material.dart';
import 'package:mypart1/Color.dart';
import 'package:mypart1/Homepage/Screen/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          iconSize: 20,
          icon: Icon(Icons.splitscreen),
          onPressed: () {},
        ));
  }
}
