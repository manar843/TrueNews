import 'package:flutter/material.dart';
import 'package:news_app/API/api_manager.dart';
import 'package:news_app/model/sourceResponse.dart';
import 'package:news_app/views/category/widget/source_tab_widget.dart';

class CategoryDetails extends StatefulWidget {
  static const String routeName = 'categoryDetails';

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return
      //snapshot is state el data
      //loading error ok
        FutureBuilder<SourceResponse>(
        future: ApiManager.getSource(),
        builder: (context, snapShot) {
          print('  Connection state: ${snapShot.connectionState}');
          //todo:loading
          if (snapShot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(color: Colors.red));
          }
          else if (snapShot.hasError) {
            print('  Error: ${snapShot.error}');
            return Column(
              children: [
                Text('Try again'),
                ElevatedButton(
                  onPressed: () {
                    ApiManager.getSource();
                    setState(() {

                    });
                  },
                  child: Text('Try again'),
                ),
              ],
            );
          }
          //todo:server response => ok or error
          //todo:server response =>error
          if (snapShot.data!.status == 'error') {
            print(' Error: ${snapShot.data!.status}');
            return Column(
              children: [
                Text(snapShot.data!.message!),

                ElevatedButton(
                  onPressed: () {
                    ApiManager.getSource();
                    setState(() {

                    });
                  },
                  child: Text('try again'),
                ),
              ],
            );
          }
          //todo:server response =>ok
          var sourcesList = snapShot.data!.sources!;
          print(' Number of sources: ${sourcesList.length}');
          print(' First source: ${sourcesList.first.name}');

          return SourceTabWidget(SourceList:sourcesList);
        },

    );
  }
}
