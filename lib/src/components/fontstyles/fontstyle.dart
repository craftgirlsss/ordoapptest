import 'package:flutter/material.dart';

TextStyle poppinsBold({double? fontSize = 16, Color? color = Colors.black}) {
  return TextStyle(
      fontSize: fontSize, color: color, fontFamily: "Poppins-Bold");
}

TextStyle poppinsRegular(
    {double? fontSize = 15,
    Color? color = Colors.black,
    FontWeight? fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: "Poppins-Regular");
}
