import 'package:flutter/material.dart';
import '../widgets/fixup_button.dart';
import '../widgets/fixup_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FC),
      appBar: AppBar(
        title: const Text('Crear cuenta'),
        centerTitle: true,
        backgroundColor: const Color(0xFFF8F8FC),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 46,
                backgroundColor: Color(0xFFE8E6FF),
                child: Icon(
                  Icons.person_add_alt_1,
                  color: Color(0xFF5B4BFF),
                  size: 42,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Regístrate en FixUp',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 8),
              const Text(
                'Encuentra servicios confiables o publica tus habilidades.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(height: 28),
              const FixUpTextField(
                hint: 'Nombre completo',
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 16),
              const FixUpTextField(
                hint: 'Correo electrónico',
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 16),
              const FixUpTextField(
                hint: 'Teléfono',
                icon: Icons.phone_outlined,
              ),
              const SizedBox(height: 16),
              const FixUpTextField(
                hint: 'Contraseña',
                icon: Icons.lock_outline,
                obscureText: true,
              ),
              const SizedBox(height: 24),
              FixUpButton(text: 'Registrarme'),
            ],
          ),
        ),
      ),
    );
  }
}