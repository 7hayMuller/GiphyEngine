import 'package:flutter/material.dart';
import 'package:giphy_io/ui/gif_page.dart';
import 'package:giphy_io/ui/home_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
        hintColor: Colors.pinkAccent,
        primaryColor: Colors.pinkAccent,
        cursorColor: Colors.pinkAccent,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.pinkAccent)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.pinkAccent)),
          hintStyle: TextStyle(color: Colors.white),
        )),
  ));
}
