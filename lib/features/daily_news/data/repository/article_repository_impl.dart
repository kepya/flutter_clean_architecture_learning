import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_formation/core/constants/constants.dart';
import 'package:flutter_formation/core/resources/data_state.dart';
import 'package:flutter_formation/features/daily_news/data/data_sources/local/app_database.dart';
import 'package:flutter_formation/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:flutter_formation/features/daily_news/data/models/article.dart';
import 'package:flutter_formation/features/daily_news/domain/entities/article.dart';
import 'package:flutter_formation/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;
  final AppDatabase _appDatabase;

  ArticleRepositoryImpl(this._newsApiService, this._appDatabase);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      final result =
          await _newsApiService.getNewsArticles(apiKey, country, category);
      var response = result.response;
      if (response.statusCode == HttpStatus.ok) {
        return DataSuccess(result.data!);
      } else {
        return DataFailed(DioException(
          requestOptions: response.requestOptions,
          message: response.statusMessage,
          error: response.statusMessage,
          response: response,
        ));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<List<ArticleEntity>> getSavedArticles() {
    return _appDatabase.articleDAO.getArticles();
  }

  @override
  Future<void> removeArticle(ArticleEntity article) {
    return _appDatabase.articleDAO
        .deleteArticle(ArticleModel.fromEntity(article));
  }

  @override
  Future<void> saveArticle(ArticleEntity article) {
    return _appDatabase.articleDAO
        .insertArticle(ArticleModel.fromEntity(article));
  }
}
