import 'package:flutter/material.dart';
import 'package:ex_flutter/const.dart';
import 'package:ex_flutter/components/product.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
        child: Column(
      children: <Widget>[
        Container(
            height: _size.height * .65,
            decoration: BoxDecoration(
              color: CardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.symmetric(
                horizontal: _size.width / 5, vertical: _size.height / 10),
            child: Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  child: Image.asset('../assets/images/candle.jpg',
                      fit: BoxFit.cover, height: _size.height * .65),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Product(
                    productTitle: 'Orange scented\ncandle',
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                    price: 25,
                  ))
            ]))
      ],
    ));
  }
}
