import 'package:news_clean/src/domain/entities/article.dart';

import 'source_model.dart';

class ArticleModel extends Article {
  const ArticleModel(
      {int? id,
      SourceModel? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? published,
      String? content})
      : super(
            id: id,
            source: source,
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            published: published,
            content: content);

  factory ArticleModel.fromJson(Map<String, dynamic>? map) {
    if (map == null) return const ArticleModel();

    return ArticleModel(
      id: map['id'] as int,
      source: SourceModel.fromJson(map['source'] as Map<String, dynamic>),
      author: map['author'] as String,
      title: map['title']as String,
      description: map['description']as String,
      url: map['url']as String,
      urlToImage: map['urlToImage']as String,
      published: map['published']as String,
      content: map['content']as String,
    );
  }
}
