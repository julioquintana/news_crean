import 'package:news_clean/src/core/util/constants.dart';

class ArticleRequestParam {
  final String apiKey;
  final String country;
  final String category;
  final int page;
  final int pageSize;

  const ArticleRequestParam({
    this.apiKey = kApiKey,
    this.country = 'us',
    this.category = 'general',
    this.page = 1,
    this.pageSize = 20,
  });
}
