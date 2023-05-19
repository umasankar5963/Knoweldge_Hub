import 'package:flutter/material.dart';

class ColorsUtil{
  //media query of width <640 applying this color
  // mobileview Scaffold background color
  static const mobileViewBGColor=Colors.white;
  //media query of width >640 applying this color
 // webview Scaffold background color
 static final  webViewBGColor=Colors.teal[100];
//interview Categories for background color
static final  basicCategoeryBGColor=Colors.red[100];
static final  advancedCategoeryBGColor=Colors.cyan[100];
static final  opinionCategoeryBGColor=Colors.indigo[100];
static final  performanceCategoeryBGColor=Colors.green[100];
static final  feedbackCategoeryBGColor=Colors.purple[100];
//Exam color
static final containerBGColor=Color.fromARGB(255, 206, 207, 212);

}
extension HexColor on Color {
  static Color colorConverter(String color) {
    color = color.replaceAll("#", "");

    if (color.length == 6) {
      return Color(int.parse("0xFF$color"));
    } else if (color.length == 8) {
      return Color(int.parse("0x$color"));
    }
    return Color(int.parse(color));
  }
}

