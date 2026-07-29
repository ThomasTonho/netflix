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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/fundo_login.png', fit: BoxFit.cover),

          Container(color: Colors.black.withValues(alpha: 0.72)),

          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'NETFLIX',
                      style: TextStyle(
                        color: Color(0xFFE50914),
                        fontSize: 42,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                      ),
                    ),

                    const SizedBox(height: 32),

                    InfoButton(
                      label: 'E-mail',
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      icon: const Icon(
                        Icons.email_outlined,
                        color: Colors.black54,
                        size: 18,
                      ),
                      textField: const TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 14),

                    InfoButton(
                      label: 'Senha',
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      icon: const Icon(
                        Icons.vpn_key_outlined,
                        color: Colors.black54,
                        size: 18,
                      ),
                      textField: const TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 22),

                    LoginButton(label: 'Entrar', onPressed: () {}),

                    const SizedBox(height: 48),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Não tem uma conta?',
                          style: TextStyle(
                            color: Color(0xFFB3B3B3),
                            fontSize: 13,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            'Assine agora',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
