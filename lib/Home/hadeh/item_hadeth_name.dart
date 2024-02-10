import 'package:flutter/material.dart';
import 'package:islamy/Home/hadeh/hadeh_tap.dart';
import 'package:islamy/Home/hadeh/hadeth_details_screen.dart';
import 'package:islamy/Home/quran/quran_tap.dart';
import 'package:islamy/Home/quran/sura_details_screen.dart';

class ItemHadethName extends StatelessWidget{
  Hadeth hadeth ;

  ItemHadethName ({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
    onTap: (){
     Navigator.of(context).pushNamed(HadethDetailsScreen.routeName , arguments: hadeth );
    },

      child: Text(hadeth.title ,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}