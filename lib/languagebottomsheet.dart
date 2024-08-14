import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:islamiapp/provider/app_convig_provider.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatefulWidget {
  @override
  State<Languagebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConvigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(

            children: [
              InkWell(
                  onTap: () {
                    provider.changeLanguage('en');
                  },
                  child: provider.applanguage== 'en'?
              getSelectedItemWidget(AppLocalizations.of(context)!.english):
              getUnselectesItemWidget(AppLocalizations.of(context)!.english)
              ),

            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(

            children: [
              InkWell(
                  onTap: () {
                    provider.changeLanguage('ar');
                  },
                  child: provider.applanguage =='ar'?
                      getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
                      :
                      getUnselectesItemWidget(AppLocalizations.of(context)!.arabic)
                      
                  
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(color: Appcolores.primarylightColor)),
        Icon(Icons.check, color: Appcolores.primarylightColor)
      ],
    );
  }

  Widget getUnselectesItemWidget(String text) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}
