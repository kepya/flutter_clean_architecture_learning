import 'package:dio/dio.dart';

class MyHttpResponse<T> {
  final T? data;
  final int? statusCode;
  final Response response;

  MyHttpResponse({
    required this.data,
    required this.statusCode,
    required this.response,
  });

  factory MyHttpResponse.fromJson(Map<String, dynamic> json) {
    return MyHttpResponse<T>(
      data: json['data'],
      statusCode: json['statusCode'] ?? 0,
      response: json['response'],
    );
  }
}
