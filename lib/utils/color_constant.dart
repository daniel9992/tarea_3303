import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color purple900Fb = fromHex('#fb3e0c5c');

  static Color deepPurple701 = fromHex('#4327c8');

  static Color bluegray1003f = fromHex('#3fd9d9d9');

  static Color red900 = fromHex('#a72a2a');

  static Color lightBlue600 = fromHex('#12a7e1');

  static Color deepPurple700 = fromHex('#3929cb');

  static Color red400 = fromHex('#b55454');

  static Color amberA200 = fromHex('#e6d346');

  static Color black9003f = fromHex('#3f000000');

  static Color green600 = fromHex('#59905e');

  static Color greenA400 = fromHex('#12e16e');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#000000');

  static Color green40000 = fromHex('#0044d16b');

  static Color bluegray100Aa = fromHex('#aad9d9d9');

  static Color pink500 = fromHex('#ff0099');

  static Color pink501 = fromHex('#f3039c');

  static Color gray501 = fromHex('#b58282');

  static Color gray500 = fromHex('#968e8e');

  static Color lime500 = fromHex('#e1cc47');

  static Color amber500 = fromHex('#e1c812');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color black9000f = fromHex('#0f000000');

  static Color lightBlue50 = fromHex('#e6f8ff');

  static Color deepPurple70059 = fromHex('#594d25c6');

  static Color tealA400 = fromHex('#11e1c8');

  static Color indigo400 = fromHex('#6469d2');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
