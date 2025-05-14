import 'package:flutter/material.dart';

class Day1Challenge extends StatefulWidget {
  const Day1Challenge({super.key});

  @override
  State<Day1Challenge> createState() => _Day1ChallengeState();
}

class _Day1ChallengeState extends State<Day1Challenge> {
  final TextEditingController _controller = TextEditingController();
  String _message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 1 Challenge")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Entrez un message",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Afficher"),
              onPressed: () {
                setState(() {
                  _message = _controller.text;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              _message,
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Row(
              children: [
                Icon(Icons.arrow_back),
                Spacer(),
                Icon(Icons.arrow_forward),
              ],
            ),
            Wrap(
              children: [
                Chip(label: Text("Flutter")),
                Chip(label: Text("Dart")),
                Chip(label: Text("Mobile")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
