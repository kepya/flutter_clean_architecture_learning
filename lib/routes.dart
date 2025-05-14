import 'package:flutter_formation/challenges/day2/signup.dart';
import 'package:flutter_formation/challenges/day3/models/user.dart';
import 'package:flutter_formation/challenges/day3/pages/UserDetailPage.dart';
import 'package:flutter_formation/challenges/day3/pages/add_todo_page.dart';
import 'package:flutter_formation/challenges/day3/pages/todo_page.dart';
import 'package:flutter_formation/challenges/day3/pages/user_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_formation/challenges/day2/home.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignupPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        final extra = state.extra as Map<String, String>;
        return HomePage(
          nom: extra['nom']!,
          email: extra['email']!,
          password: extra['password']!,
        );
      },
    ),
    GoRoute(
      path: '/user/detail',
      builder: (context, state) {
        final user = state.extra as User;
        return Userdetailpage(
          user: user,
        );
      },
    ),
    GoRoute(path: '/users', builder: (context, state) => const UserPage()),
    GoRoute(path: '/', builder: (context, state) => TodoPage()),
    GoRoute(
        path: '/todo/new', builder: (context, state) => const AddTodoPage()),
  ],
);
