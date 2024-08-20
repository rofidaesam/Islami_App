import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeeth/haddeth_tab.dart';
import 'package:islamiapp/Quran/quran_tab.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:islamiapp/provider/app_convig_provider.dart';
import 'package:islamiapp/radio/radio_tab.dart';
import 'package:islamiapp/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamiapp/settings/settings.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedItem =0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConvigProvider>(context);
    return Stack(
      children: [
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
              title: Text(
           AppLocalizations.of(context)!.app_title ,
            style: Theme.of(context).textTheme.bodyLarge,
          )),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedItem,
              onTap: (index)
                {
                  selectedItem = index;
                  setState(() {

                  });
                },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/quran.png'),
                    ),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(
                        'assets/images/quran-quran-svgrepo-com.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(

                    icon: ImageIcon(AssetImage('assets/images/radio_blue.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings,),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ),
          body: tabs[selectedItem],
        ),

      ],
    );
  }
  List <Widget> tabs=[QuranTab(),HadethTab(),RadioTab(),SebhaTab(),SettingsTab()];
}
