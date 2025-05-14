import 'package:flutter_formation/core/usecases/usecase.dart';
import 'package:flutter_formation/features/daily_news/domain/entities/article.dart';
import 'package:flutter_formation/features/daily_news/domain/repository/article_repository.dart';

class SaveArticleUseCase implements Usecase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  SaveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity? params}) {
    return _articleRepository.saveArticle(params!);
  }
}
