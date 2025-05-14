import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_formation/core/constants/constants.dart';
import 'package:flutter_formation/core/util/MyHttpResponse.dart';
import 'package:flutter_formation/features/daily_news/data/models/article.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET("/top-headlines")
  Future<MyHttpResponse<List<ArticleModel>>> getNewsArticles(
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  );
}
