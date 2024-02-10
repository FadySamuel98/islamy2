import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Home/quran/item_sura_details.dart';
import 'package:islamy/mytheme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }


    return Stack(
      children: [
        Image.asset('assets/images/background.png', height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(

            title: Center(child: Text(args.name, style: Theme
                .of(context)
                .textTheme
                .titleLarge,)),
          ),
          body: verses.isEmpty ?
          Center(child: CircularProgressIndicator(
            color: MyTheme.primaryLightColor,))
              :
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
            child: ListView.separated(
              separatorBuilder: (context , index){
                return Divider(
                  color: Colors.white,
                  thickness: 2,
                );
              },
              itemBuilder: (context, index) {
              return ItemSuraDetails(content : verses[index] , index: index,);
            },

              itemCount: verses.length,


            ),
          ),
        )
      ],
    );
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString(
        'assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {

    });
  }
}


class SuraDetailsArgs{
  String name ;
  int index ;
  SuraDetailsArgs({required this.name , required this.index});
}