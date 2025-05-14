import 'package:flutter_formation/core/resources/data_state.dart';
import 'package:flutter_formation/features/daily_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  Future<List<ArticleEntity>> getSavedArticles();
  Future<void> saveArticle(ArticleEntity article);
  Future<void> removeArticle(ArticleEntity article);
}
