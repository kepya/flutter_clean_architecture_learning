import 'package:floor/floor.dart';
import 'package:flutter_formation/features/daily_news/data/models/article.dart';

@dao
abstract class ArticleDao {
  @Insert()
  Future<void> insertArticle(ArticleModel article);

  @delete
  Future<void> deleteArticle(ArticleModel article);

  @Query('SELECT * FROM article')
  Future<List<ArticleModel>> getArticles();
}
