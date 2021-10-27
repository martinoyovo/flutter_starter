import 'package:flutter/material.dart';
import 'package:flutter_starter/utils/hex_to_color.dart';

Color primary = Color(0xFF16C982);
class Styles {
  static Color primaryColor = primary;
  static Color yellowColor = Color(0xFFFFC146);
  static Color accentColor = Color(0xFFA9E1C7);
  static Color greyColor = Color(0xFFE0E0E0);
  static const Color bgColor = Color(0xFFF6F6F6);
  static TextStyle textStyle = TextStyle(fontSize: 15, fontFamily: "DMSans");

  static Color getColor(String? c) => c == null ? primary : hexToColor(c);
  static TextStyle getOfferStyle(String? c) => TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: getColor(c));
}