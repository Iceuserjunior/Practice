import 'package:flutter/material.dart';
import 'package:mypart1/Color.dart';
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
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding / 2,
              bottom: kDefaultPadding * 0.25,
            ),
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/ice_1.jpg"),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ]),
                  child: Row(
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "IceScreem".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        )
                      ]))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
