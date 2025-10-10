import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/API/api_constants.dart';
import 'package:news_app/API/end_points.dart';
import 'package:news_app/model/newsResponse.dart';
import 'package:news_app/model/sourceResponse.dart';

class ApiManager {
  /*
https://newsapi.org/v2/top-headlines/sources?apiKey=6878b8270ae54282b04718a51011b554
 */
  static Future<SourceResponse> getSource() async {
    print('  getSource() called');

    Uri url = Uri.https(ApiConstants.baseUrl, EndPoints.sourceApi, {
      'apiKey': ApiConstants.apiKey,
    });
    print('  URL: $url');

    try {
      var response = await http.get(url);
      print(' Status Code: ${response.statusCode}');
      print('  Body: ${response.body}');

      var responseBody = response.body;
      var json = jsonDecode(responseBody);

      print('  JSON Decoded Successfully');

      return SourceResponse.fromJson(json);
    } catch (e) {
      print('  Exception in getSource(): $e');
      throw e;
    }
  }

  /*
  https://newsapi.org/v2/everything?q=bitcoin&apiKey=6878b8270ae54282b04718a51011b554
  */
static Future<NewsResponse > getNews(String sourceId) async {
  Uri url=Uri.https(ApiConstants.baseUrl,EndPoints.newsApi,
      {
        "apiKey": ApiConstants.apiKey,
        "sources":sourceId
      },);
 try {
      var response = await http.get(url);
      var responseBody = response.body; //string json object
      var json = jsonDecode(responseBody);
      return NewsResponse.fromJson(json);
    }catch(e){
   print('  Exception in getSource(): $e');
   throw e;
 }
  }
}
