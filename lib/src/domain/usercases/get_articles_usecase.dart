import 'package:news_clean/src/core/article_request.dart';
import 'package:news_clean/src/core/resources/data_state.dart';
import 'package:news_clean/src/core/usecases/usecase.dart';
import 'package:news_clean/src/domain/entities/article.dart';
import 'package:news_clean/src/domain/repositories/articles_repository.dart';

class GetArtickesUseCase
    implements UseCase<DataState<List<Article>>, ArticleRequestParam> {
  final ArticlesRepository _articlesRepository;

  GetArtickesUseCase(this._articlesRepository);

  @override
  Future<DataState<List<Article>>> call({ArticleRequestParam? params}) {
    return _articlesRepository.getBreakingNewsArticles(params!);
  }
}
