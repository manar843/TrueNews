import 'package:http/http.dart' as http;
import 'package:news_app/API/api_constants.dart';
import 'package:news_app/API/end_points.dart';
class ApiManager{
/*
https://newsapi.org/v2/top-headlines/sources?apiKey=6878b8270ae54282b04718a51011b554
 */

static void getSource(){
  Uri url=  Uri.https(ApiConstants.baseUrl,EndPoints.sourceApi,{'apiKey':ApiConstants.apiKey});
  http.get(url);
}
}