import 'package:flutter_formation/features/daily_news/presentation/pages/daily_news.dart';
import 'package:go_router/go_router.dart';

GoRouter routers = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const DailyNews()),
]);
