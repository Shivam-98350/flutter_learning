import 'package:flutter/material.dart';

class myTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          // textTheme: Theme.of(context).textTheme,
        ),
      );

//colours

  static Color whitish = Color(0xfff5f5f5);
  static Color darkbluish = Color(0xff403b58);
}
