import 'package:flutter/material.dart';

import 'Drawer/drawer.dart';
import 'category/catagory_details.dart';

class HomeScreen extends StatelessWidget {
 static const  String routeName='home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Home'),),
      drawer: DrawerHome(),
     body: CategoryDetails( )
    );
  }
}
