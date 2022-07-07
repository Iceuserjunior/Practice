import 'package:flutter/material.dart';
import 'package:mypart1/Homepage/Screen/headscreen.dart';
import 'package:mypart1/Homepage/Screen/title_recomended.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Headerscreen(size: size),
          TitleRecomended(
            title: 'Recomended',
            press: () {},
          ),
        ],
      ),
    );
  }
}
