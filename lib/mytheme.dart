import 'package:flutter/material.dart';

class MyTheme {
  // color    -   // light theme  -  // dark theme

  static Color blackcolor = Color(0xff242424);
  static Color primaryLightColor =Color(0xffB7935F);
  static ThemeData lightMode = ThemeData(
    primaryColor: primaryLightColor,
    canvasColor: primaryLightColor,

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent , elevation: 0),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackcolor ,
      showUnselectedLabels: true ,


   ),

    textTheme: TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.bold ,
        fontSize: 30 ,
        color: blackcolor

      ),
      titleMedium: TextStyle(fontWeight: FontWeight.w600,
        fontSize: 30,
        color: blackcolor
      )
    )

  );

}