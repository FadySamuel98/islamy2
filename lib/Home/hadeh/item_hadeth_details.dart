import 'package:flutter/material.dart';
import 'package:islamy/Home/quran/quran_tap.dart';
import 'package:islamy/Home/quran/sura_details_screen.dart';

class ItemHadethDetails extends StatelessWidget{
  String content ;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text( content ,
      style: Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.center,

    );
  }
}