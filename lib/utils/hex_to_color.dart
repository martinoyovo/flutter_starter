import 'dart:ui';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, code.length), radix: 16) + 0xFF000000);
}