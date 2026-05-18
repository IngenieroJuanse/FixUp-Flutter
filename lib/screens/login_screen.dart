import 'package:flutter/material.dart';
import '../widgets/fixup_button.dart';
import '../widgets/fixup_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                'FixUp',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF5B4BFF),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Servicios para tu hogar, rápidos y confiables.',
                style: TextStyle(fontSize: 17, color: Colors.black54),
              ),
              const SizedBox(height: 36),
              const FixUpTextField(
                hint: 'Correo electrónico',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 16),
              const FixUpTextField(
                hint: 'Contraseña',
                icon: Icons.lock_outline,
                obscureText: true,
              ),
              const SizedBox(height: 24),
              FixUpButton(text: 'Iniciar sesión'),
              const SizedBox(height: 14),
              FixUpButton(text: 'Crear cuenta', outlined: true),
              const Spacer(),
              const Center(
                child: Text(
                  '¿Olvidaste tu contraseña?',
                  style: TextStyle(
                    color: Color(0xFF5B4BFF),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}