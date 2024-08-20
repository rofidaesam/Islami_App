import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:islamiapp/ayat_detailes.dart';
import 'package:islamiapp/provider/app_convig_provider.dart';
import 'package:islamiapp/sura_detailes_name.dart';
import 'package:provider/provider.dart';

class SuraDetailesScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailesScreen';

  @override
  State<SuraDetailesScreen> createState() => _SuraDetailesScreenState();
}

class _SuraDetailesScreenState extends State<SuraDetailesScreen> {
  List <String> verses =[];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConvigProvider>(context);
   var args = ModalRoute.of(context)?.settings.arguments as SuraDetailesArgs;
    if(verses.isEmpty)

 {
  loadFile(args.index);
  }
    return Stack(children: [
      provider.isDark()?

           Image.asset(
        'assets/images/home_dark_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ):
      Image.asset(
        'assets/images/bg3.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
              title: Text(args.name,
        style: Theme.of(context).textTheme.bodyLarge,
      )),

      body:verses.isEmpty?
          Center(child: CircularProgressIndicator(color: Appcolores.primarylightColor,))
          :
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.5,
          vertical: MediaQuery.of(context).size.height*0.6,

        ),
        decoration: BoxDecoration(

          color: provider.isDark()?
              Appcolores.primaryDarkColor:
        Appcolores.primarylightColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: ListView.separated(
          separatorBuilder: (context,index)
            {
        return  Divider(
          thickness: 3,
          color: provider.isDark()?
          Appcolores.yellowColor:
          Appcolores.primarylightColor,
        );
            },
          itemBuilder: (contex,index){
          return AyatDetailes(content:verses[index],index: index);
        },
        itemCount: verses.length,),
      ),
      )
    ]);
  }

  void loadFile (int index)async
  {
    String content =await rootBundle.loadString('assets/files/${1+index}.txt');
   List <String> lines = content.split('\n');
    verses = lines;
    setState(() {

    });
  }
}
class SuraDetailesArgs{
  String name;
  int index;
  SuraDetailesArgs({required this.name ,required this.index});
}
