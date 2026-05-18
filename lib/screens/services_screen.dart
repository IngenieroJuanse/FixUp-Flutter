import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/service_card.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FC),
      appBar: AppBar(
        title: const Text('Servicios disponibles'),
        centerTitle: true,
        backgroundColor: const Color(0xFFF8F8FC),
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(22),
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar servicio',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: const [
                _FilterChip(label: 'Todos', selected: true),
                SizedBox(width: 8),
                _FilterChip(label: 'Hogar'),
                SizedBox(width: 8),
                _FilterChip(label: 'Eléctrico'),
              ],
            ),
            const SizedBox(height: 20),
            ...mockServices.map((service) => ServiceCard(service: service)),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _FilterChip({
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF5B4BFF) : Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black87,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}