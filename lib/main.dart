import 'package:flutter/material.dart';
import 'package:islamy/Home/hadeh/hadeth_details_screen.dart';
import 'package:islamy/Home/homescreen.dart';
import 'package:islamy/Home/quran/sura_details_screen.dart';
import 'package:islamy/mytheme.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName ,
      routes:{
        HomeScreen.routeName :(context) => HomeScreen(),
        SuraDetailsScreen.routeName : (context)=> SuraDetailsScreen(),
        HadethDetailsScreen.routeName :(context)=> HadethDetailsScreen(),
      } ,
      theme: MyTheme.lightMode,
    );
  }
}