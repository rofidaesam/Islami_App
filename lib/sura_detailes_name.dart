import 'package:flutter/material.dart';
import 'package:islamiapp/sura_detailes_screen.dart';

class SuraDetailesName extends StatelessWidget {
  String text;
int index;
 SuraDetailesName({required this.text,required this.index});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(SuraDetailesScreen.routeName,
          arguments: SuraDetailesArgs(name: text, index: index));
        },
        child: Text(text,style:
        Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,
            ),
      );
  }
}
