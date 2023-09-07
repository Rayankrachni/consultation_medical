import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle AppTextStyle(
{
  Color color=Colors.black,
  required double size,
  required FontWeight fontweight,
}){
return GoogleFonts.inter(
  fontSize: size,
  fontWeight: fontweight,
  color: color,
  decorationStyle: TextDecorationStyle.dotted,

);
}




