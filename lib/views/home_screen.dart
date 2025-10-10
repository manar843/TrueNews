import 'package:flutter/material.dart';
import 'package:news_app/model/sourceResponse.dart';

import 'Drawer/drawer.dart';
import 'category/catagory_details.dart';
import 'news/news_widget.dart';

class HomeScreen extends StatelessWidget {
 static const  String routeName='home';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar( title: Text('Home',
          style:  Theme.of(context).textTheme.labelLarge),),
      drawer: DrawerHome(),
     body: Column(
       children: [
         CategoryDetails( ),

       ],
     )
    );
  }
}

