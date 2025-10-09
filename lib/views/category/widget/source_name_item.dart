import 'package:flutter/material.dart';
import 'package:news_app/model/sourceResponse.dart';

import '../../../utils/my_theme_app.dart';

class SourceNameItem extends StatelessWidget {
Sources source ;
bool isSelected;
SourceNameItem({required this.source,required this.isSelected });
  @override
  Widget build(BuildContext context) {
    return Text(
       source.name??'',style: isSelected?
    Theme.of(context).textTheme.labelLarge:
    Theme.of(context).textTheme.labelSmall,

    );
  }
}
