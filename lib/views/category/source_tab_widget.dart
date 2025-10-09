import 'package:flutter/material.dart';

import '../../model/sourceResponse.dart';

class SourceTabWidget extends StatelessWidget {
List<Sources> SourceList;
SourceTabWidget({required this.SourceList});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: SourceList.length,
        child: TabBar(tabs:  [

        ]));
  }
}
