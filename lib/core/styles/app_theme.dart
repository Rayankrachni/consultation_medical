
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const/strings.dart';

ThemeData buildLightTheme(BuildContext context) {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme:  ColorScheme(brightness: Brightness.light,
      primary: primary_Color,
      onPrimary: primary_Color,
      secondary: secondary_Color,
      onSecondary:secondary_Color,
      error: Color(0xFFF32424),
      onError: Color(0xFFF32424),
      background: Color(0xFFF1F2F3),
      onBackground: Color(0xFFFFFFFF),
      surface: Colors.transparent,
      onSurface:Colors.transparent,),
    //useMaterial3: true,
    cardColor: Colors.white,

    primaryColor: primary_Color,
    iconTheme: const IconThemeData(
      color: Colors.grey
    ),


    inputDecorationTheme:const InputDecorationTheme(
      //prefixIconColor: Colors.grey,

      hintStyle: TextStyle(
          fontFamily: regularfontFamilyName,
          fontSize: 14,
      ),
      labelStyle: TextStyle(
          fontFamily: regularfontFamilyName,
          fontSize: 14,
      ),
      // Customize other input decoration properties as needed
    ),
   bottomNavigationBarTheme:const BottomNavigationBarThemeData(
     showSelectedLabels: true,
     showUnselectedLabels: true,
     selectedItemColor: primaryColor2,
     unselectedItemColor: textColor2,
     unselectedLabelStyle: TextStyle(color:textColor2,fontSize: 14),
     selectedIconTheme: IconThemeData(color:primaryColor2),
     unselectedIconTheme: IconThemeData(color:textColor2),
     selectedLabelStyle: TextStyle(color:primary_Color,fontSize: 14),
   ),

    textTheme:const TextTheme(
      subtitle1:  TextStyle(color: Colors.black),
      headline1: TextStyle(
          fontSize: 28,fontWeight: FontWeight.bold,fontFamily: 'inter',color: Colors.black
      ),
      headline2: TextStyle(
          fontSize: 16,fontWeight: FontWeight.normal,color: Colors.grey,fontFamily: 'inter'
      ),
      headline3: TextStyle(
          fontSize: 14,fontWeight: FontWeight.normal,fontFamily: 'inter',color: Colors.black
      ),
      headline4: TextStyle(
          fontSize: 15, color: primary_Color,fontFamily: 'inter'
      ),
      headline5: TextStyle(
          fontFamily: 'inter',
          fontSize: 12,
          color: Colors.grey
      ),
      headline6: TextStyle(
          fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'ZonaPro-ExtraLight',color: Colors.black
      ),

  // Add more text styles as needed
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary_Color, // Set the button's background color
        onPrimary: Colors.white, // Set the text color
        elevation: 8, // Set the elevation (shadow) of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Set the border radius
        ),
         // Set the minimum width and height
        // Add more properties as needed, e.g., padding, textStyle, etc.
      ),
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: Colors.grey,
    ),


    scaffoldBackgroundColor: Colors.white,
    textSelectionTheme:const TextSelectionThemeData(
      cursorColor:  primary_Color,
    ),

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color>(primary_Color),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue.withOpacity(0.5);
        }
        return Colors.grey.withOpacity(0.5);
      }),
    ),

    appBarTheme:const AppBarTheme(
      color:  Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
          color: Colors.black
      ),
    ),
  );
}

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    colorScheme:const  ColorScheme(brightness: Brightness.dark,
      primary: primary_Color,
      onPrimary: primary_Color,
      secondary:Colors.white,
      onSecondary:Colors.white,
      error: Color(0xFFF32424),
      onError: Color(0xFFF32424),
      background: Color(0xFFF1F2F3),
      onBackground: Color(0xFFFFFFFF),
      surface: Colors.transparent,
      onSurface:Colors.transparent,),
    appBarTheme: AppBarTheme(
      color:  Colors.grey[900],
      elevation: 0,
      iconTheme:const IconThemeData(
          color: Colors.black
      ),
    ),


    inputDecorationTheme:const InputDecorationTheme(
      //prefixIconColor: Colors.grey,

      hintStyle: TextStyle(
          fontFamily: 'inter',
          fontSize: 14,

          color: Colors.white54
      ),
      labelStyle: TextStyle(
          fontFamily: 'inter',
          fontSize: 14,
          color: Colors.white54
      ),
      // Customize other input decoration properties as needed
    ),


    textTheme:const TextTheme(
      headline1: TextStyle(
          fontSize: 37,fontWeight: FontWeight.bold,fontFamily: regularfontFamilyName,color: Colors.white
      ),
      headline2: TextStyle(
          fontSize: 16,fontWeight: FontWeight.normal,color: Colors.white,fontFamily:regularfontFamilyName
      ),
      headline3: TextStyle(
          fontSize: 16,fontWeight: FontWeight.normal,fontFamily: regularfontFamilyName,color: Colors.white
      ),
      headline4: TextStyle(
          fontSize: 15, color: primary_Color,fontFamily: regularfontFamilyName
      ),
      headline5: TextStyle(
          fontFamily: 'ZonaPro-ExtraLight',
          fontSize: 12,
          color: Colors.grey
      ),
      headline6: TextStyle(
          fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'ZonaPro-ExtraLight',color: Colors.white
      ),
      // Add more text styles as needed
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary_Color, // Set the button's background color
        onPrimary: Colors.white, // Set the text color
        elevation: 8, // Set the elevation (shadow) of the button
        /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Set the border radius
        ),*/
        // Set the minimum width and height
        // Add more properties as needed, e.g., padding, textStyle, etc.
      ),
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
    ),


    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all<Color>(primary_Color), // Replace with your desired color for the switch thumb
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue.withOpacity(0.5); // Replace with your desired color for the active track
        }
        return Colors.grey.withOpacity(0.5); // Replace with your desired color for the inactive track
      }),
    ),
    cardColor: Colors.grey[850],
    primaryColor: primary_Color,
    scaffoldBackgroundColor: Colors.grey[900],
  );
}