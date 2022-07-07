import 'package:flutter/material.dart';
import 'package:mypart1/Color.dart';
import 'package:mypart1/Homepage/Screen/headscreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Headerscreen(size: size),
          Middledesign(
            texthead: "Recomended",
          ),
        ],
      ),
    );
  }
}

class Middledesign extends StatelessWidget {
  const Middledesign({
    Key key,
    this.texthead,
  }) : super(key: key);
  final String texthead;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              texthead,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(left: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
