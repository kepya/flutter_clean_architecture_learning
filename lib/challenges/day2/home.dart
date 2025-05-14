import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String email;
  final String nom;
  final String password;

  const HomePage({
    super.key,
    required this.email,
    required this.nom,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Données reçues")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("👤 Nom : $nom"),
            const SizedBox(height: 8),
            Text("📧 Email : $email"),
            const SizedBox(height: 8),
            Text("🔒 Mot de passe : $password"),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Retour"),
            ),
          ],
        ),
      ),
    );
  }
}
