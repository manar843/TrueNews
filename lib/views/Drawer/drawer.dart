import 'package:flutter/material.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:news_app/provider/app_language_providar.dart';
import 'package:provider/provider.dart';

import '../../provider/app_theme_provider.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var languageProvider = Provider.of<AppLanguageProvider >(context);
    bool isDark = themeProvider.themeMode == ThemeMode.dark;
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Text("True News App",
            style: Theme.of(context).textTheme.labelLarge,) ),
          ListTile(
            leading:isDark? Icon(Icons.dark_mode,color: Colors.red,size: 33,)
                :Icon(Icons.light_mode,color: Colors.black,size: 33,),
            title: Text('Dark Mode',style:  Theme.of(context).textTheme.labelMedium),
            trailing: Switch(
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              value: isDark,
               onChanged: (value){
                 themeProvider.changeTheme(value?ThemeMode.dark:
                 ThemeMode.light);
               },
            ),
          ),
          ListTile(
            leading:   Icon(Icons.language,  size: 33,color: Theme.of(context).iconTheme.color, ),
            title:   Text(AppLocalizations.of(context)?.language??'language ',
                style:  Theme.of(context).textTheme.labelSmall),
            trailing: DropdownButton<String>(
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              style: Theme.of(context).textTheme.labelSmall,
              value: languageProvider.appLanguage,
              items:   [

                DropdownMenuItem(value: 'en',
                    child: Text( AppLocalizations.of(context)?.english??''
                        ,style:  Theme.of(context).textTheme.labelSmall )),
                DropdownMenuItem(value: 'ar',
                    child: Text( AppLocalizations.of(context)?.arabic??''
                        ,style:  Theme.of(context).textTheme.labelSmall)),
              ],
              onChanged: (value) {
                if (value != null) {
                  languageProvider.changeLanguage(value);
                }
              },
            ),
          ),

        ],
      ),
    );
  }
}
