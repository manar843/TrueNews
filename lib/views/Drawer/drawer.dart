import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/app_theme_provider.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
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
        ],
      ),
    );
  }
}
