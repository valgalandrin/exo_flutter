import 'package:flutter/material.dart';
import 'package:ex_flutter/const.dart';
import 'package:ex_flutter/components/navbar.dart';
import 'package:ex_flutter/components/productCard.dart';
import 'package:ex_flutter/components/mobileProductCard.dart';
import 'package:ex_flutter/components/responsive.dart';

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
        body: Responsive(
            mobile: MobileProductCard(),
            tablet: ProductCard(),
            desktop: ProductCard()));
  }
}
