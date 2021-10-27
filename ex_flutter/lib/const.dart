import 'package:flutter/material.dart';

const TextColor = Color(0xFF000000);
const TextDescriptionColor = Color(0xFF838383);
const BackgroundColor = Color(0xFFFFFEFD);
const CardColor = Color(0xFFF8E5CB);
const ButtonColor = Color(0xFFDA8302);

class Data {
  bool inCart;

  Data({required this.inCart});
}

final data = Data(inCart: false);
