import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Home/hadeh/item_hadeth_name.dart';
import 'package:islamy/mytheme.dart';

class HadehTap extends StatefulWidget{
  @override
  State<HadehTap> createState() => _HadehTapState();
}

class _HadehTapState extends State<HadehTap> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if(ahadethList.isEmpty){loadFile();}

    return Column(
      children: [
        Center(child: Image.asset('assets/images/ahadeth_image.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
            'Hadeth Name',
            style: Theme.of(context).textTheme.titleLarge
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        ahadethList.isEmpty?
            Center (child: CircularProgressIndicator(color: MyTheme.primaryLightColor,),)
                :
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context , index){
              return Divider(
                color: Theme.of(context).primaryColor,
                thickness: 2,
              );
            },



            itemBuilder: (context , index){
              return ItemHadethName(hadeth: ahadethList[index]);
            },
            itemCount: ahadethList.length ,



          ),
        )

      ],
    );
  }

  void loadFile()async{
    String hadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = hadethContent.split('#\r\n');
    for(int i = 0 ; i<hadethList.length ; i++){
     List<String> hadethLines = hadethList[i].split('\n');
     String title = hadethLines[0];
     hadethLines.removeAt(0);
     Hadeth hadeth = Hadeth(title: title, content: hadethLines);
     ahadethList.add(hadeth);
     setState(() {

     });
     }
  }
}

class Hadeth {
  String title ;
  List<String> content ;
  Hadeth({required this.title , required this.content});
}