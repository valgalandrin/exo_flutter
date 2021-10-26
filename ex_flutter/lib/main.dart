import 'package:flutter/material.dart';
import 'package:ex_flutter/const.dart';
import 'package:ex_flutter/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Candles',
      theme: ThemeData(
          fontFamily: 'Poppins', scaffoldBackgroundColor: BackgroundColor),
      home: MyHomePage(title: 'Candles'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: Navbar(),
          preferredSize: Size.fromHeight(90),
        ),
        body: ProductCard());
  }
}

class ProductCard extends StatefulWidget {
  ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  _ProductCard createState() => _ProductCard();
}

class _ProductCard extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    
    Size _size = MediaQuery.of(context).size;

    return Container(
        child: Column(
      children: <Widget>[
        Container(
            height: _size.height * .6,
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
                      fit: BoxFit.cover, height: _size.height * .6),
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

class Navbar extends StatefulWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  _Navbar createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 150),
      padding: EdgeInsets.only(top: 30, bottom: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 2.0, color: Color(0x20000000)))),
      child: AppBar(
        elevation: 0.0,
        title: Text(
          'Candles',
          style: TextStyle(
              color: TextColor, fontFamily: 'Yeseva One', fontSize: 42),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Image.asset('../assets/images/caddie.png'),
            iconSize: 40,
          )
        ],
        backgroundColor: BackgroundColor,
      ),
    );
  }
}
