import 'package:flutter/material.dart';
import 'package:flutter_formation/challenges/day3/state/todo_state.dart';
import 'package:flutter_formation/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoModel = context.watch<TodoModel>();

    void deleteTodo(String todoId) {
      todoModel.removeTodo(todoId);
    }

    void toggleDone(String todoId) {
      todoModel.toggleDone(todoId);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste de mes tâches"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todoModel.todos.length,
          itemBuilder: (builder, index) {
            var todo = todoModel.todos[index];

            return ListTile(
              title: Text(todo.content),
              subtitle: Text(todo.isDone ? "Fait" : "Non fait"),
              trailing: IconButton(
                  onPressed: () => deleteTodo(todo.id),
                  icon: const Icon(Icons.delete)),
              onTap: () => toggleDone(todo.id),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/todo/new');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
