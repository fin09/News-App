class ArticleModel {
  final String? image;
  final String? title;
  final String? subTitle;
  // final SourceModel? source;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    // required this.source,
  });
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
