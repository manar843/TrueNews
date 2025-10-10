import 'package:flutter/material.dart';
import 'package:news_app/API/api_manager.dart';
import 'package:news_app/model/newsResponse.dart';
import 'package:news_app/views/news/news_item.dart';
import '../../model/sourceResponse.dart';

class NewsWidget extends StatefulWidget {
  static const String routeName = 'news';
  final Sources sources;

  const NewsWidget({required this.sources, Key? key}) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
      future: ApiManager.getNews(widget.sources.id??''),
      builder: (context, snapShot) {
        if (snapShot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator(color: Colors.red));
        }

        if (snapShot.hasError) {
          print('Error: ${snapShot.error}');
          return Center(
            child: ElevatedButton(
              onPressed: () {
                ApiManager.getNews(widget.sources.id??'');
                setState(() {});
              },
              child: const Text('Try Again'),
            ),
          );
        }

        if (!snapShot.hasData || snapShot.data == null) {
          return const Center(child: Text('No data found'));
        }

        if (snapShot.data!.status == 'error') {
          print('Server Error: ${snapShot.data!.message}');
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(snapShot.data!.message ?? 'Unknown error'),
              ElevatedButton(
                onPressed: () {
                  ApiManager.getNews(widget.sources.id??'');
                  setState(() {});},
                child: const Text('Try Again'),
              ),
            ],
          );
        }

        var newsList = snapShot.data!.articles!;
        return SizedBox(
       height: 696,
          child: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {

              return NewsItem(articles: newsList[index]);
            },
          ),
        );
      },
    );
  }
}
