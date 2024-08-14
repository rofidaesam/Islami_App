import 'package:flutter/material.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class RadioTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 100,),

        Image.asset('assets/images/radio.png'),
        Text(
          AppLocalizations.of(context)!.radio,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
         Row(

           children: [
             SizedBox(height: 100,),
             Spacer(),
             Icon(Icons.skip_previous,color: Appcolores.primarylightColor,size: 50,),
             Spacer(),
             Icon(Icons.play_arrow,color: Appcolores.primarylightColor,size: 50,),
             Spacer(),
             Icon(Icons.skip_next,color: Appcolores.primarylightColor,size: 50,),
             Spacer()
           ],
         )

      ],
    );
  }
}
