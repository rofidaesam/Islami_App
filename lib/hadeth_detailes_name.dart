import 'package:flutter/material.dart';
import 'package:islamiapp/sura_detailes_screen.dart';

import 'Hadeeth/haddeth_tab.dart';

class HadethDetailesName extends StatelessWidget {
  static const routeName = 'HadethDetailesName';
  HadethModel hadeth;

 HadethDetailesName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(HadethDetailesName.routeName,
              arguments:hadeth );
        },
        child: Text(hadeth.title,style:
        Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,
            ),
      );
  }
}
