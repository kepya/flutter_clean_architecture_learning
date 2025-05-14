import 'package:flutter/material.dart';
import 'package:flutter_formation/challenges/day3/state/todo_state.dart';
import 'package:flutter_formation/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final formkey = GlobalKey<FormState>();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // final todoModel = context.read<TodoModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajout d'un todo"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: contentController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Champs Obligatoire";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  context.read<TodoModel>().addTodo(contentController.text);
                  contentController.clear();
                  context.go("/");
                }
              },
              child: const Text("Ajouter"),
            ),
          ],
        ),
      ),
    );
  }
}
