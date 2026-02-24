import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_container.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articlesList});
  final List<ArticleModel> articlesList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NewsTile(article_model: articlesList[index]);
      }, childCount: articlesList.length),
    );
  }
}
