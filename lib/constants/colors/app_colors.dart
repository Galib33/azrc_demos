import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color blackColor = Color(0xff000000);
  static const Color whiteColor = Color(0xffffffff);
  static const Color primaryColor = Color(0xff5946D2);

  static const Color customBlackColor = Color(0xff1C1B1F);

  static const Color grayColor = Color(0xff4F4F4F);
  static const Color lightPurpleColor = Color(0xffE5DFF9);
  static const Color darkPurpleColor = Color(0xff160067);

  static const Color lightGrayColor = Color(0xff79747E);
  static const Color lightTextGrayColor = Color(0xffA5A0AC);

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
}
