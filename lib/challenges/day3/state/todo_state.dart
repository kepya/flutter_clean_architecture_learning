import 'package:flutter/foundation.dart';
import 'package:flutter_formation/challenges/day3/models/todo.dart';
import 'package:uuid/uuid.dart';

class TodoModel extends ChangeNotifier {
  List<Todo> todos = [];
  void addTodo(String content) {
    todos.add(Todo(id: const Uuid().v4(), content: content));
    notifyListeners();
  }

  void removeTodo(String id) {
    todos.removeWhere((element) => element.id.compareTo(id) == 0);
    notifyListeners();
  }

  void toggleDone(String id) {
    final todo = todos.firstWhere((element) => element.id.compareTo(id) == 0);
    final index = todos.indexOf(todo);
    todo.isDone = !todo.isDone;
    todos[index] = todo;
    notifyListeners();
  }
}
