import 'package:flutter/material.dart';
import 'package:news_app/utils/app_styles.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../model/newsResponse.dart';

class NewsItem extends StatelessWidget {
  Articles articles;
  NewsItem({required this.articles});
  @override
  Widget build(BuildContext context) {
    final cardTheme = Theme.of(context).cardTheme;

    return Container(
       margin:   EdgeInsets.all(12),
       padding:   EdgeInsets.all(11),
        decoration: ShapeDecoration(
          color: cardTheme.color  ,
          shape: cardTheme.shape ?? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child:  Column(
          children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
            child: Image.network(articles.urlToImage??'')),
            Text(articles.title??'' ,
            style:  Theme.of(context).textTheme.labelMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              Text('By:${articles.author?.substring(0,8) ?? ''}' ,
                style:  AppStyles.med12gray
              ),
                Text(
                   formatTimeAgo(articles.publishedAt),
                  style: AppStyles.med12gray,
                ),


              ],)
          ],
        )

    );
  }
  String formatTimeAgo(String? publishedAt) {
    if (publishedAt == null || publishedAt.isEmpty) return '';

    try {
      final dateTime = DateTime.parse(publishedAt).toLocal();
      return timeago.format(dateTime);
    } catch (e) {
      return publishedAt;
    }
  }

}
