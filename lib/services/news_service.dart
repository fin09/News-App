import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=725498d1292141bbabd2d09537466514',
    );
    Map<String, dynamic> data = response.data;
    List<dynamic> articles = data['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
        // source: SourceModel(
        //   id: article['source']['id'],
        //   name: article['source']['name'],
        // ),
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
