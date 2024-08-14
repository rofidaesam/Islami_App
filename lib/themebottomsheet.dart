import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:islamiapp/provider/app_convig_provider.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatefulWidget {
  @override
  State<Themebottomsheet> createState() => _LanguagebottomsheetState();
}

class _LanguagebottomsheetState extends State<Themebottomsheet> {
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
                    provider.changeTheme(ThemeMode.light);
                  },
                  child: !(provider.isDark())?
              getSelectedItemWidget(AppLocalizations.of(context)!.light):
              getUnselectesItemWidget(AppLocalizations.of(context)!.light)
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
                    provider.changeTheme(ThemeMode.dark);
                  },
                  child: provider.isDark() ?
                      getSelectedItemWidget(AppLocalizations.of(context)!.dark)
                      :
                      getUnselectesItemWidget(AppLocalizations.of(context)!.dark)
                      
                  
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
