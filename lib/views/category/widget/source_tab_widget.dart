import 'package:flutter/material.dart';
import 'package:news_app/views/category/widget/source_name_item.dart';
import 'package:news_app/views/news/news_widget.dart';

import '../../../model/sourceResponse.dart';

class SourceTabWidget extends StatefulWidget {
List<Sources> SourceList;
SourceTabWidget({required this.SourceList});

  @override
  State<SourceTabWidget> createState() => _SourceTabWidgetState();
}

class _SourceTabWidgetState extends State<SourceTabWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.SourceList.length,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.transparent,
                isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  onTap: (index){
                    selectedIndex=index;
                    setState(() {
                    });
                  },
                  tabs:    widget.SourceList.map((source ){
                    return SourceNameItem(
                      source: source ,
                      isSelected: selectedIndex == widget.SourceList.indexOf(source) );
                  })
                      .toList()
              ),
              NewsWidget(sources: widget.SourceList[selectedIndex])
            ],
          ),
        ));
  }
}
