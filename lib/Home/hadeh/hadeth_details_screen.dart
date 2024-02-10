import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Home/hadeh/hadeh_tap.dart';
import 'package:islamy/Home/hadeh/item_hadeth_details.dart';
import 'package:islamy/Home/quran/item_sura_details.dart';
import 'package:islamy/mytheme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'HadethDetailsScreen';

  @override
  State<HadethDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth ;

    return Stack(
      children: [
        Image.asset('assets/images/background.png', height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(

            title: Center(child: Text(args.title, style: Theme
                .of(context)
                .textTheme
                .titleLarge,)),
          ),
          body:
          Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08 ,
              horizontal: MediaQuery.of(context).size.width * 0.06
            ),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
              return ItemHadethDetails(content : args.content[index]);
            },

              itemCount: args.content.length,


            ),
          ),
        )
      ],
    );
  }

}


class SuraDetailsArgs{
  String name ;
  int index ;
  SuraDetailsArgs({required this.name , required this.index});
}