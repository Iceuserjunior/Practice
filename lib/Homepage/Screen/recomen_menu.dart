import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mypart1/Color.dart';
import 'package:mypart1/Homepage/Screen_item/data_icecream.dart';

class RecomenMenu extends StatelessWidget {
  const RecomenMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          MenuLilt(
            image: "assets/images/ice_1.jpg",
            title: "IceScram",
            country: "purple  potato",
            price: 150,
            press: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => DataIceCream(),
                  ));
            },
          ),
          MenuLilt(
            image: "assets/images/ice_2.jpg",
            title: "IceCream",
            country: "chocolate",
            price: 99,
            press: () {},
          ),
          MenuLilt(
            image: "assets/images/ice_3.jpg",
            title: "IceCream",
            country: "chocolates",
            price: 110,
            press: () {},
          ),
          MenuLilt(
            image: "assets/images/ice_4.jpg",
            title: "IceScram",
            country: "set black \n& white",
            price: 120,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class MenuLilt extends StatelessWidget {
  const MenuLilt({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);
  final String image, title, country;
  final price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding / 2,
        bottom: kDefaultPadding * 0.25,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: 100,
            width: 150,
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
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
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: "$country",
                        style:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                  ])),
                  Spacer(),
                  Text('\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
