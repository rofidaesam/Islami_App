import 'package:flutter/material.dart';
import 'package:islamiapp/Hadeth_detailes_screen.dart';
import 'package:islamiapp/hadeth_detailes_name.dart';
import 'package:islamiapp/home_screen.dart';
import 'package:islamiapp/my_theme_data.dart';
import 'package:islamiapp/provider/app_convig_provider.dart';
import 'package:islamiapp/sura_detailes_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=> AppConvigProvider(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
late AppConvigProvider provider;

  @override
  Widget build(BuildContext context) {
   provider = Provider.of<AppConvigProvider>(context);
    initPrefs();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.routeName,
      routes: {
        homeScreen.routeName:(context)=> homeScreen(),
        SuraDetailesScreen.routeName:(context)=>SuraDetailesScreen(),
       HadethDetailesName.routeName:(context)=>HadethDetailesScreen()
      },
      theme: MyThemeData.Lightmood,
      darkTheme: MyThemeData.darktmood,

          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,

          locale: Locale(provider.applanguage),
      themeMode: provider.appTheme,
    );
  }

   Future<void>initPrefs ()async
   {

     final SharedPreferences prefs = await SharedPreferences.getInstance();
     var language =prefs.getString('language');
     var mode= prefs.getBool('isDark');
     if(language != null)
       {
         provider.changeLanguage(language);
       }
     if(mode == true)
       {
         provider.changeTheme(ThemeMode.dark);
       }
     if(mode == false)
     {
       provider.changeTheme(ThemeMode.light);
     }
   }
}
