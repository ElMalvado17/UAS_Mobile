import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color cyanA400 = fromHex('#00d1ff');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color blueGray400 = fromHex('#888888');

  static Color gray900 = fromHex('#131313');

  static Color blue600 = fromHex('#1183ed');

  static Color gray90001 = fromHex('#111111');

  static Color red300 = fromHex('#f56868');

  static Color lightBlue400 = fromHex('#26ccf1');

  static Color gray50 = fromHex('#fffafa');

  static Color teal300 = fromHex('#53adc1');

  static Color black90001 = fromHex('#000000');

  static Color black90099 = fromHex('#99000000');

  static Color black900 = fromHex('#060606');

  static Color black90006 = fromHex('#000000');

  static Color black90003 = fromHex('#020202');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90002 = fromHex('#090909');

  static Color indigo500 = fromHex('#3863d2');

  static Color black90005 = fromHex('#010000');

  static Color cyan400 = fromHex('#11d9e6');

  static Color black90004 = fromHex('#0e0d0d');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
