import 'package:news_clean/src/core/article_request.dart';
import 'package:news_clean/src/core/resources/data_state.dart';
import 'package:news_clean/src/domain/entities/article.dart';

abstract class ArticlesRepository {
  Future<DataState<List<Article>>> getBreakingNewsArticles(
      ArticleRequestParam params);
}
