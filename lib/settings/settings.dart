import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/themebottomsheet.dart';
import 'package:provider/provider.dart';

import '../languagebottomsheet.dart';
import '../provider/app_convig_provider.dart';


class SettingsTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConvigProvider>(context);
    return InkWell(
      onTap: (){
      ShowLanguagebottomsheet(context);
      },
      child: Container(
        margin: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.bodyMedium,),
        SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Appcolores.primarylightColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Text(
                    provider.applanguage == 'en'?
                      AppLocalizations.of(context)!.english
            :AppLocalizations.of(context)!.arabic,
                  ),
                  Icon(Icons.arrow_drop_down,size: 40,)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.bodyMedium,),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                showThemeBottomsheet(context);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Appcolores.primarylightColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      provider.isDark()?
                      AppLocalizations.of(context)!.dark
                          :AppLocalizations.of(context)!.light,
                    ),
                    Icon(Icons.arrow_drop_down,size: 40,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void ShowLanguagebottomsheet(BuildContext context)
  {
    showBottomSheet(context: context, builder:(context)=> Languagebottomsheet() );
  }

  void showThemeBottomsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) =>Themebottomsheet() );
  }
}
