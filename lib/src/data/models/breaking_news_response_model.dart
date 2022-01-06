import 'package:news_clean/src/data/models/article_model.dart';

class BreakingNewsRespondseModel {
  final String? status;
  final int? totalResult;
  final List<ArticleModel>? articles;

  BreakingNewsRespondseModel({
    this.status,
    this.totalResult,
    this.articles,
  });

  factory BreakingNewsRespondseModel.fromJson(Map<String, dynamic> map) {
    return BreakingNewsRespondseModel(
        status: map['status'] as String,
        totalResult: map['totalResult'] as int,
        articles: List<ArticleModel>.from(
          (map['articles'] as List<dynamic>).map(
            (e) => ArticleModel.fromJson(e as Map<String, dynamic>),
          ),
        ));
  }
}
