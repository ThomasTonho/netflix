import 'package:flutter/material.dart';
import 'package:netflix_copia/components/info_button.dart';
import 'package:netflix_copia/components/login_button.dart';

class TelaIncial extends StatefulWidget {
  const TelaIncial({super.key});

  @override
  State<TelaIncial> createState() => _TelaIncialState();
}

class _TelaIncialState extends State<TelaIncial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logotipo-da-netflix.jpg', height: 110),

                const SizedBox(height: 24),

                InfoButton(
                  label: 'E-mail',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  icon: const Icon(Icons.email_outlined, color: Colors.black),
                  textField: const TextField(
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                const SizedBox(height: 12),

                InfoButton(
                  label: 'Senha',
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  icon: const Icon(Icons.lock_outline, color: Colors.black),
                  textField: const TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                const SizedBox(height: 16),

                LoginButton(label: 'Entrar', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
