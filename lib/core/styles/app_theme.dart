
import 'package:consultation_medical/core/styles/app_colors.dart';
import 'package:consultation_medical/core/styles/app_txt_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../const/strings.dart';

ThemeData buildLightTheme(BuildContext context) {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: const ColorScheme(brightness: Brightness.light,
      primary: primary_Color,
      onPrimary: primary_Color,
      secondary: secondary_Color,
      onSecondary:secondary_Color,
      error: Color(0xFFF32424),
      onError: Color(0xFFF32424),
      background: Colors.white,
      onBackground: filledColor,
      surface: Colors.transparent,
      onSurface:Colors.transparent,),

    cardColor: Colors.white,


    primaryColor: primary_Color,
    iconTheme: const IconThemeData(
      color: Colors.grey
    ),

    tabBarTheme: TabBarTheme(
      unselectedLabelColor: textColor2 ,
      labelColor: primary_Color,
      unselectedLabelStyle:AppTextStyle(size: 14, fontweight: FontWeight.w500,color:Theme.of(context).colorScheme.secondary),
      labelStyle: AppTextStyle(size: 14, fontweight: FontWeight.w500,color:Theme.of(context).colorScheme.secondary)
    ),


    inputDecorationTheme: InputDecorationTheme(

        hintStyle: AppTextStyle(size: 14, fontweight: FontWeight.w500,color: placeHolderColor),
        labelStyle:  AppTextStyle(size: 14, fontweight: FontWeight.w500,color: placeHolderColor)
      // Customize other input decoration properties as needed
    ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     showSelectedLabels: true,
     showUnselectedLabels: true,
     selectedItemColor: primaryColor2,
     unselectedItemColor: textColor2,
     unselectedLabelStyle: AppTextStyle(size: 12, fontweight: FontWeight.normal,color: textColor2),
     selectedIconTheme: IconThemeData(color:primaryColor2),
     unselectedIconTheme: IconThemeData(color:textColor2),
     selectedLabelStyle: AppTextStyle(size: 14, fontweight: FontWeight.normal,color: primary_Color),
   ),

    textTheme: TextTheme(
      subtitle1:  TextStyle(color: Colors.black),
      headline1: AppTextStyle(size: 25, fontweight: FontWeight.w600,color: Colors.black),
      headline2: AppTextStyle(size: 14, fontweight: FontWeight.w500,color: Color(
          0xff58585d)),
      headline3: AppTextStyle(size: 12, fontweight: FontWeight.w500,color:authSubtitleColor),
      headline4: AppTextStyle(size: 15, fontweight: FontWeight.w500,color: primaryColor1),
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
      useMaterial3: true,
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
      background: Color(0xFF1A1A1A),
      onBackground: Colors.black54,
      surface: Colors.transparent,
      onSurface:Colors.transparent,),
    appBarTheme: AppBarTheme(
      color:  Colors.grey[900],
      elevation: 0,
      iconTheme:const IconThemeData(
          color: Colors.white
      ),
    ),


    inputDecorationTheme: InputDecorationTheme(
      //prefixIconColor: Colors.wh,

        hintStyle: AppTextStyle(size: 14, fontweight: FontWeight.w500,color: Colors.white54),
        labelStyle:  AppTextStyle(size: 14, fontweight: FontWeight.w500,color: Colors.white54)

      // Customize other input decoration properties as needed
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: primaryColor2,
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: AppTextStyle(size: 12, fontweight: FontWeight.normal,color: Colors.white),
      selectedIconTheme: IconThemeData(color:primaryColor2),
      unselectedIconTheme: IconThemeData(color:Colors.white),
      selectedLabelStyle: AppTextStyle(size: 14, fontweight: FontWeight.normal,color:primary_Color),
    ),
    textTheme: TextTheme(
      subtitle1:  TextStyle(color: Colors.white),
      headline1: AppTextStyle(size: 25, fontweight: FontWeight.w600,color: Colors.white),
      headline2: AppTextStyle(size: 14, fontweight: FontWeight.w500,color: Color(
          0xff9e9ea2)),
      headline3: AppTextStyle(size: 12, fontweight: FontWeight.w600,color:authSubtitleColor),
      headline4: AppTextStyle(size: 15, fontweight: FontWeight.w500,color: primaryColor1),
      headline5: TextStyle(
          fontFamily: 'inter',
          fontSize: 12,
          color: Colors.grey
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
      thumbColor: MaterialStateProperty.all<Color>(Colors.white),
      trackOutlineColor:MaterialStateProperty.all<Color>(Colors.white),

      // Replace with your desired color for the switch thumb
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white.withOpacity(0.5); // Replace with your desired color for the active track
        }
        return Colors.white.withOpacity(0.5); // Replace with your desired color for the inactive track
      }),
    ),
    cardColor: Colors.grey[900],
    primaryColor: primary_Color,
    scaffoldBackgroundColor: Colors.grey[900],
  );
}