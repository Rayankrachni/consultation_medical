import 'package:flutter/material.dart';

TextStyle AppTextStyle(
{
  Color color=Colors.black,
  required double size,
  required FontWeight fontweight,
}){
return TextStyle(
  fontWeight: fontweight,
  color: color,
  fontSize: size,
  fontFamily: 'myriad',

);
}




