import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/fixup_button.dart';

class ServiceDetailScreen extends StatelessWidget {
  const ServiceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final service = mockServices.first;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    service.imageUrl,
                    width: double.infinity,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withValues(alpha: 0.9),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withValues(alpha: 0.9),
                      child: const Icon(Icons.favorite_border),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: const BoxDecoration(
                  color: Color(0xFFF8F8FC),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.title,
                      style: const TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      service.category,
                      style: const TextStyle(
                        color: Color(0xFF5B4BFF),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber),
                        const SizedBox(width: 4),
                        Text('${service.rating}'),
                        const SizedBox(width: 18),
                        const Icon(Icons.location_on_outlined),
                        const SizedBox(width: 4),
                        Expanded(child: Text(service.location)),
                      ],
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'Descripción',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      service.description,
                      style: const TextStyle(
                        color: Colors.black54,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'Opiniones',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 10),
                    ...mockReviews.map(
                      (review) => Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xFFE8E6FF),
                              child: Icon(
                                Icons.person,
                                color: Color(0xFF5B4BFF),
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(child: Text(review)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Text(
                          service.price,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF5B4BFF),
                          ),
                        ),
                        const SizedBox(width: 18),
                        Expanded(child: FixUpButton(text: 'Solicitar servicio')),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}