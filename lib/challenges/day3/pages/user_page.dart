import 'package:flutter/material.dart';
import 'package:flutter_formation/challenges/day3/models/user.dart';
import 'package:go_router/go_router.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<User> users = [
      User(name: "Alice", email: "alice@email.com", age: 25),
      User(name: "Bob", email: "bob@email.com", age: 30),
    ];

    return Scaffold(
      body: users.isEmpty
          ? const Center(
              child: Text("Aucun utilisateur disponible"),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  onTap: () => context.go('/user/detail', extra: user),
                );
              },
            ),
    );
  }
}
