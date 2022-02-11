import 'package:flutter/material.dart';

/// A list of custom color used in the application.
abstract class ColorsValue {
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(18, 134, 27, .1),
    100: Color.fromRGBO(18, 134, 27, .2),
    200: Color.fromRGBO(18, 134, 27, .3),
    300: Color.fromRGBO(18, 134, 27, .4),
    400: Color.fromRGBO(18, 134, 27, .5),
    500: Color.fromRGBO(18, 134, 27, .6),
    600: Color.fromRGBO(18, 134, 27, .7),
    700: Color.fromRGBO(18, 134, 27, .8),
    800: Color.fromRGBO(18, 134, 27, .9),
  };

  static const Color primaryColor = Color(
    primaryColorHex,
  );

  static const Color accentColor = Color(
    accentColorHex,
  );

  static const int primaryColorHex = 0xFF12861B;

  static const int accentColorHex = 0xFF138B1D;
}
