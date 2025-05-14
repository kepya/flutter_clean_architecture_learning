import 'package:flutter/material.dart';
import 'package:flutter_formation/challenges/day3/models/user.dart';

class Userdetailpage extends StatelessWidget {
  final User user;
  const Userdetailpage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Détail utilisateur"),
      ),
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nom: ${user.name}"),
            Text("Email: ${user.email}"),
            Text("Age: ${user.age}"),
          ],
        ),
      ),
    );
  }
}
