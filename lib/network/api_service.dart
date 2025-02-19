
import 'package:dio/dio.dart';
import 'package:newss_app/model/article.dart';
import 'package:newss_app/widgets/article_item.dart';


class ApiService {
  final Dio  dio= Dio();

  Future<List<Article>> getNews() async {
    var response = await dio.get(
      "https://newsapi.org/v2/everything?q=tesla&from=2025-01-18&sortBy=publishedAt&apiKey=0f2d3025877b44208c62b11805cbd8cb",
    );

    Map<String, dynamic> json = response.data;
    List<Article> articles = [];
    for(var i in json["articles"]){
      articles.add(Article(image: i["urlToImage"], name: i["title"], desc: i["description"]));
    }
    return articles;
  }

}