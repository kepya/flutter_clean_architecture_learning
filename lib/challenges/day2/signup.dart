import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    if (_formKey.currentState!.validate()) {
      context.go(
        '/home',
        extra: {
          'nom': _nameController.text,
          'email': _emailController.text,
          'password': _passwordController.text,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Création de compte",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
              ),
              const SizedBox(height: 20),
              const Text("Nom"),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: "Entrez votre nom",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.isEmpty
                    ? "Veuillez entrer votre nom"
                    : null,
              ),
              const SizedBox(height: 16),
              const Text("Email"),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: "Entrez votre email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.isEmpty
                    ? "Veuillez entrer votre email"
                    : null,
              ),
              const SizedBox(height: 16),
              const Text("Mot de passe"),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Entrez votre mot de passe",
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value == null || value.isEmpty
                    ? "Veuillez entrer votre mot de passe"
                    : null,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _handleSubmit,
                  child: const Text("S'inscrire"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
