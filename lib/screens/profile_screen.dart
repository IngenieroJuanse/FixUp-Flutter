import 'package:flutter/material.dart';
import '../widgets/fixup_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FC),
      appBar: AppBar(
        title: const Text('Mi perfil'),
        centerTitle: true,
        backgroundColor: const Color(0xFFF8F8FC),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const CircleAvatar(
              radius: 54,
              backgroundColor: Color(0xFFE8E6FF),
              child: Icon(
                Icons.person,
                color: Color(0xFF5B4BFF),
                size: 58,
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Violeta Martínez',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(height: 4),
            const Center(
              child: Text(
                'Cliente FixUp',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            const SizedBox(height: 28),
            Row(
              children: const [
                _StatCard(title: 'Servicios', value: '12'),
                SizedBox(width: 12),
                _StatCard(title: 'Favoritos', value: '5'),
                SizedBox(width: 12),
                _StatCard(title: 'Reviews', value: '8'),
              ],
            ),
            const SizedBox(height: 28),
            const _ProfileOption(
              icon: Icons.history,
              title: 'Historial de servicios',
            ),
            const _ProfileOption(
              icon: Icons.favorite_border,
              title: 'Servicios favoritos',
            ),
            const _ProfileOption(
              icon: Icons.payment_outlined,
              title: 'Métodos de pago',
            ),
            const _ProfileOption(
              icon: Icons.settings_outlined,
              title: 'Configuración',
            ),
            const SizedBox(height: 20),
            FixUpButton(text: 'Editar perfil'),
            const SizedBox(height: 12),
            FixUpButton(text: 'Cerrar sesión', outlined: true),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;

  const _StatCard({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 84,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(
                color: Color(0xFF5B4BFF),
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ProfileOption({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF5B4BFF)),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}