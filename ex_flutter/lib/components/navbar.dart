import 'package:flutter/material.dart';
import 'package:ex_flutter/const.dart';

class Navbar extends StatefulWidget {
  Navbar({Key? key}) : super(key: key);

  @override
  _Navbar createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      data.inCart;
      print(data.inCart);
    });

    Size _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: _size.width * .15),
      padding: EdgeInsets.only(top: 30, bottom: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 2.0, color: Color(0x20000000)))),
      child: AppBar(
        elevation: 0.0,
        title: Text(
          'Candles',
          style: TextStyle(
              color: TextColor,
              fontFamily: 'Yeseva One',
              fontSize: (_size.width <= 650 ? 26 : 42)),
        ),
        actions: [
          IconButton(
              onPressed: null,
              icon: data.inCart == true
                  ? Image.asset('../assets/images/caddie_full.png')
                  : Image.asset('../assets/images/caddie.png'),
              iconSize: 40)
        ],
        backgroundColor: BackgroundColor,
      ),
    );
  }
}
