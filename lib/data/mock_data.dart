class MockService {
  final String title;
  final String category;
  final String provider;
  final String location;
  final String price;
  final double rating;
  final String description;
  final String imageUrl;

  const MockService({
    required this.title,
    required this.category,
    required this.provider,
    required this.location,
    required this.price,
    required this.rating,
    required this.description,
    required this.imageUrl,
  });
}

const mockServices = [
  MockService(
    title: 'Reparación de lavadora',
    category: 'Electrodomésticos',
    provider: 'Carlos Ramírez',
    location: 'Chapinero, Bogotá',
    price: '\$80.000',
    rating: 4.8,
    description:
        'Servicio técnico para diagnóstico, mantenimiento y reparación de lavadoras en casa.',
    imageUrl:
        'https://images.unsplash.com/photo-1626806819282-2c1dc01a5e0c?w=800',
  ),
  MockService(
    title: 'Instalación eléctrica',
    category: 'Electricidad',
    provider: 'Laura Gómez',
    location: 'Usaquén, Bogotá',
    price: '\$120.000',
    rating: 4.7,
    description:
        'Instalación de tomacorrientes, revisión de cableado y solución de fallas eléctricas.',
    imageUrl:
        'https://images.unsplash.com/photo-1621905252507-b35492cc74b4?w=800',
  ),
  MockService(
    title: 'Pintura de habitación',
    category: 'Hogar',
    provider: 'Miguel Torres',
    location: 'Teusaquillo, Bogotá',
    price: '\$150.000',
    rating: 4.9,
    description:
        'Pintura interior con materiales incluidos y acabado limpio para habitaciones pequeñas y medianas.',
    imageUrl:
        'https://images.unsplash.com/photo-1562259949-e8e7689d7828?w=800',
  ),
];

const mockReviews = [
  'Muy buen servicio, llegó puntual y solucionó el problema.',
  'La atención fue clara y el precio justo.',
  'Recomendado, el trabajo quedó muy bien hecho.',
];