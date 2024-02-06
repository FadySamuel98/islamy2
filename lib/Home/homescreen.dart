import 'package:flutter/material.dart';
import 'package:islamy/Home/hadeh/hadeh_tap.dart';
import 'package:islamy/Home/quran/quran_tap.dart';
import 'package:islamy/Home/radio/radio_tap.dart';
import 'package:islamy/Home/sebah/sebah_tap.dart';
import 'package:islamy/mytheme.dart';

class HomeScreen extends StatefulWidget{
  static const routeName = 'HomeScreen' ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/background.png', height: double.infinity,width: double.infinity, fit: BoxFit.fill,),
        Scaffold(

          appBar: AppBar(

            title: Center(child: Text('Islami' , style: Theme.of(context).textTheme.titleLarge,),


        ),
    ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyTheme.primaryLightColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex = index ;
                setState(() {
                });
              },
              items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran_image.png')), label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png')), label: 'moshaf'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')), label: 'Sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')), label: 'Radio'),

            ],),
          ),
          body: taps[selectedIndex],

    ),
  ]
    );
  }
  List<Widget> taps =
  [ QuranTap() , HadehTap() , SebahTap() ,
  RadioTap()];
}
