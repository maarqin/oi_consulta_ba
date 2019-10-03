import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xffFDB814);
const lightColor = const Color(0xff00A696);
const backgroundColor = const Color(0xFFFFFFFF);

ThemeData darkYellowTheme() {
  return ThemeData(

    brightness: brightness,
    hintColor: Colors.grey,
    // textTheme: new TextTheme(
    //   body1: new TextStyle(color: Colors.red),
    //   display4: new TextStyle(fontSize: 78),
    //   button: new TextStyle(color: Colors.green),
    // ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme:
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    accentColor: lightColor,
    // fontFamily: 'Montserrat',
    buttonColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}