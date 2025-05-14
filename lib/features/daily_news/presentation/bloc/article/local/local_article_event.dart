import 'package:equatable/equatable.dart';
import 'package:flutter_formation/features/daily_news/domain/entities/article.dart';

class LocalArticleEvent extends Equatable {
  final ArticleEntity? article;
  const LocalArticleEvent({this.article});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetSavedArticles extends LocalArticleEvent {
  const GetSavedArticles();
}

class RemoveArticle extends LocalArticleEvent {
  const RemoveArticle(ArticleEntity article) : super(article: article);
}

class SaveArticle extends LocalArticleEvent {
  const SaveArticle(ArticleEntity article) : super(article: article);
}
