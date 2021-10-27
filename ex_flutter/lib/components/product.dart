import 'package:flutter/material.dart';
import 'package:ex_flutter/const.dart';

class Product extends StatefulWidget {
  final String productTitle;
  final String description;
  final int price;

  Product({
    Key? key,
    required this.price,
    required this.productTitle,
    required this.description,
  }) : super(key: key);

  @override
  _Product createState() => _Product();
}

class _Product extends State<Product> {
  int _counter = 0;
  int price = 25;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    String productTitle = widget.productTitle;
    String description = widget.description;

    return Container(
        margin: _size.width <= 650 ? null : EdgeInsets.only(left: 20),
        height: (_size.width <= 650
            ? _size.height - (_size.height * .35 + 90)
            : _size.height * .6),
        width: (_size.width <= 650 ? _size.width : _size.width * .25),
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 40,
                top: _size.height / 15,
                right: 30,
                bottom: (_size.width >= 650
                    ? _size.height / 30
                    : _size.height / 15),
                child: Container(
                  child: Column(
                    crossAxisAlignment: _size.width >= 650
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(productTitle,
                          style: TextStyle(
                              fontSize: (_size.width >= 1400
                                  ? 36
                                  : _size.width >= 1100
                                      ? 28
                                      : 24),
                              fontWeight: FontWeight.w600)),
                      _size.width <= 650 ? SizedBox(height: 1) : Spacer(),
                      Text(description,
                          style: TextStyle(
                            color: TextDescriptionColor,
                            fontSize: (_size.width >= 1400
                                ? 20
                                : _size.width >= 1100
                                    ? 16
                                    : 14),
                          )),
                      _size.width <= 650 ? SizedBox(height: 10) : Spacer(),
                      Text(
                          (_counter == 0
                              ? '\$' + '25'
                              : '\$' + (_counter * price).toString()),
                          style: TextStyle(
                              fontSize: (_size.width >= 1400
                                  ? 30
                                  : _size.width >= 1100
                                      ? 26
                                      : 24),
                              fontWeight: FontWeight.w500)),
                      _size.width <= 650 ? SizedBox(height: 10) : Spacer(),
                      Container(
                          width: (_size.width <= 800 ? 150 : 180),
                          height: (_size.width <= 800 ? 40 : 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              TextButton(
                                  onPressed: _decrementCounter,
                                  child: Text('-',
                                      style: TextStyle(
                                          color: ButtonColor,
                                          fontSize:
                                              (_size.width <= 800 ? 20 : 26),
                                          fontWeight: FontWeight.w500))),
                              Text('$_counter',
                                  style: TextStyle(
                                      fontSize:
                                          (_size.width <= 800 ? 16 : 20))),
                              TextButton(
                                  onPressed: _incrementCounter,
                                  child: Text('+',
                                      style: TextStyle(
                                          color: ButtonColor,
                                          fontSize:
                                              (_size.width <= 800 ? 20 : 26),
                                          fontWeight: FontWeight.w500)))
                            ],
                          )),
                      _size.width <= 650 ? SizedBox(height: 20) : Spacer(),
                      ButtonAddToCart()
                    ],
                  ),
                )),
          ],
        ));
  }
}

class ButtonAddToCart extends StatelessWidget {
  const ButtonAddToCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: (_size.width <= 800 ? 220 : 260),
      height: (_size.width <= 800 ? 50 : 70),
      child: TextButton(
          onPressed: null,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(ButtonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)))),
          child: Text('Add to cart',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: (_size.width <= 800 ? 20 : 26)))),
    );
  }
}
