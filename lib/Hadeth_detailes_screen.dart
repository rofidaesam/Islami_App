import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Hadeeth/haddeth_tab.dart';
import 'package:islamiapp/Hadeth_detailes.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:islamiapp/ayat_detailes.dart';
import 'package:islamiapp/hadeth_detailes_name.dart';
import 'package:islamiapp/provider/app_convig_provider.dart';
import 'package:provider/provider.dart';


class HadethDetailesScreen extends StatelessWidget {
  static const String routeName = 'HadethDetailesScreen';

  @override

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConvigProvider>(context);
   var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

    return Stack(children: [
      provider.isDark()?
      Image.asset(
        'assets/images/bg3.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      )
          : Image.asset(
        'assets/images/home_dark_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
              title: Text(args.title,
        style: Theme.of(context).textTheme.bodyLarge,
      )),

      body:
      Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.06,
          vertical: MediaQuery.of(context).size.width*0.06,

        ),
        decoration: BoxDecoration(
            color: provider.isDark()?
            Appcolores.primaryDarkColor:
            Appcolores.primarylightColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: ListView.builder(

          itemBuilder: (contex,index){
          return HadethDetailes(content:args.content[index]);
        },
        itemCount: args.content.length,),
      ),
      )
    ]);
  }


  }

