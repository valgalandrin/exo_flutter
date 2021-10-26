import 'package:flutter/material.dart';
import 'package:ex_flutter/const.dart';

class Product extends StatefulWidget {
  final String productTitle;
  final String description;
  int price;

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
        margin: EdgeInsets.only(left: 20),
        height: MediaQuery.of(context).size.height * .6,
        width: MediaQuery.of(context).size.width * .25,
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 40,
                top: _size.height * .1,
                right: 40,
                bottom: _size.height * .05,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(productTitle,
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w600)),
                      Spacer(),
                      Text(description,
                          style: TextStyle(
                              color: TextDescriptionColor, fontSize: 20)),
                      Spacer(),
                      Text(
                          (_counter == 0
                              ? '\$' + '25'
                              : '\$' + (_counter * price).toString()),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500)),
                      Spacer(),
                      Container(
                          width: 180,
                          height: 50,
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
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500))),
                              Text('$_counter', style: TextStyle(fontSize: 20)),
                              TextButton(
                                  onPressed: _incrementCounter,
                                  child: Text('+',
                                      style: TextStyle(
                                          color: ButtonColor,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w500)))
                            ],
                          )),
                      Spacer(),
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
    return Container(
      width: 260,
      height: 70,
      child: TextButton(
          onPressed: null,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(ButtonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)))),
          child: Text('Add to cart',
              style: TextStyle(color: Colors.white, fontSize: 26))),
    );
  }
}
