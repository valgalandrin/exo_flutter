import 'package:flutter/material.dart';
import 'package:ex_flutter/components/product.dart';
import 'package:ex_flutter/const.dart';

class MobileProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
        child: Column(
      children: <Widget>[
        Container(
            height: _size.height - 90,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('../assets/images/candle.jpg'),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter)),
            child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: _size.height * .35),
                  decoration: BoxDecoration(
                      color: CardColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(children: <Widget>[
                    Product(
                      productTitle: 'Orange scented\ncandle',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                      price: 25,
                    )
                  ]))
            ]))
      ],
    ));
  }
}
