import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/hadeth_detailes_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../appcolores.dart';
import '../provider/app_convig_provider.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List <HadethModel> hadethList=[];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConvigProvider>(context);
    if(hadethList.isEmpty)
      {
        loadFile();
      }

    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadith_header.png')),
        Divider(
          thickness: 3,
          color:provider.isDark()?
          Appcolores.yellowColor:
          Appcolores.primarylightColor,
        ),
        Text(AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.bodyMedium,),
        Divider(
          thickness: 3,
          color: Appcolores.primarylightColor,
        ),
        Expanded(
          flex:2,
          child:hadethList.isEmpty?
    Center(child: CircularProgressIndicator(color: Appcolores.primarylightColor,)):
          ListView.separated(
              separatorBuilder: (context,index)
              {
              return  Divider(
          color :provider.isDark()?
                    Appcolores.yellowColor:
                    Appcolores.primarylightColor,
                thickness: 3,
                );
              },
              itemBuilder: (context,index)
              {
                return HadethDetailesName(hadeth:hadethList[index]);
              },
              itemCount: hadethList.length

          ),
        )
      ],
    );

  }

  void loadFile()async
  {
    String Hadeethcontent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> HadethList = Hadeethcontent.split('#\r\n');
    for(int i = 0;i<HadethList.length;i++)
      {
        List<String> HadethLines = HadethList[i].split('\n');
        String title = HadethLines[0];
        HadethLines.remove(0);
        HadethModel hadeth= HadethModel(title: title, content: HadethLines);
        hadethList.add(hadeth);
        setState(() {

        });
      }

  }
}
class HadethModel
{
  String title;
  List<String> content;
  HadethModel({required this.title,required this.content});
}
