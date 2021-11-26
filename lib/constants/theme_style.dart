import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const defaultColor = Colors.cyan;

class ColorsApp{
  static final primaryColor = Color(0xFF93D8F8);
  static final secColor = Color(0xFFFF9785);
  static final defTextColor = Color(0xFF153E73);
  static final col = Color(0xFFF89A9A);
  static final yellowColor = Color(0xFFF4C264);
  static final switchColor = Color(0xFF524BAD);
}
ThemeData themeDataLight = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: defaultColor,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 25.0,
        ),
        titleTextStyle: titleTextStyle
    ),
    textTheme: const TextTheme(
        bodyText1: bodyTextStyle,
        subtitle1: subtitleTextStyle,
    ),
);

const largeTextSize = 26.0;
const mediumTextSize = 20.0;
const bodyTextSize = 16.0;

const appBarTextStyle = TextStyle(
  // fontFamily: FontNameDefault,
  fontWeight: FontWeight.bold,
  fontSize: mediumTextSize,
  color: Color(0xFF2F2D51),
);

const titleTextStyle = TextStyle(
  // fontFamily: FontNameDefault,
  fontWeight: FontWeight.bold,
  fontSize: largeTextSize,
  color: Color(0xFF2F2D51),
);

const subtitleTextStyle = TextStyle(
  // fontFamily: FontNameDefault,
  fontWeight: FontWeight.w500,
  height: 1.5,
  fontSize: mediumTextSize,
  color: Color(0xFF2F2D51),
);

const bodyTextStyle = TextStyle(
  // fontFamily: FontNameDefault,
  fontWeight: FontWeight.normal,
  fontSize: bodyTextSize,
  color: Color(0xFF2F2D51),
);
