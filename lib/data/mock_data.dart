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
 
class MockCategory {
  final String title;
  final String imageUrl;
 
  const MockCategory({
    required this.title,
    required this.imageUrl,
  });
}
 
const mockCategories = [
  MockCategory(
    title: 'Baños',
    imageUrl: 'https://picsum.photos/id/101/400/300',
  ),
  MockCategory(
    title: 'Iluminación',
    imageUrl: 'https://picsum.photos/id/112/400/300',
  ),
  MockCategory(
    title: 'Cocina',
    imageUrl: 'https://picsum.photos/id/292/400/300',
  ),
  MockCategory(
    title: 'Exterior',
    imageUrl: 'https://picsum.photos/id/188/400/300',
  ),
];
 
const mockServices = [
  MockService(
    title: 'Reparación de grifería',
    category: 'Plomería',
    provider: 'María López',
    location: 'Chapinero, Bogotá',
    price: '\$150000.0',
    rating: 4.9,
    description: 'Reparación y ajuste de grifos, cambios de cartucho y limpieza profunda.',
    imageUrl: 'https://picsum.photos/id/201/400/300',
  ),
  MockService(
    title: 'Lavado premium de alfombras',
    category: 'Limpieza',
    provider: 'Carolina Ruiz',
    location: 'Suba, Bogotá',
    price: '\$280000.0',
    rating: 4.8,
    description: 'Limpieza profunda para alfombras y tapetes con secado rápido.',
    imageUrl: 'https://picsum.photos/id/210/400/300',
  ),
  MockService(
    title: 'Instalación de bombillos LED',
    category: 'Electricidad',
    provider: 'Javier Morales',
    location: 'Usaquén, Bogotá',
    price: '\$80000.0',
    rating: 4.7,
    description: 'Montaje y conexión de bombillos LED en espacios residenciales.',
    imageUrl: 'https://picsum.photos/id/160/400/300',
  ),
  MockService(
    title: 'Limpieza de cocina profunda',
    category: 'Limpieza',
    provider: 'Sandra Díaz',
    location: 'Teusaquillo, Bogotá',
    price: '\$200000.0',
    rating: 4.9,
    description: 'Limpieza profunda de superficies, muebles y electrodomésticos.',
    imageUrl: 'https://picsum.photos/id/431/400/300',
  ),
  MockService(
    title: 'Mesa de comedor elegante',
    category: 'Muebles',
    provider: 'Laura Camacho',
    location: 'Chía, Cundinamarca',
    price: '\$650000.0',
    rating: 4.8,
    description: 'Diseño e instalación de mesas de comedor a medida.',
    imageUrl: 'https://picsum.photos/id/116/400/300',
  ),
  MockService(
    title: 'Jardín verde premium',
    category: 'Exterior',
    provider: 'Diego Sánchez',
    location: 'Cota, Cundinamarca',
    price: '\$400000.0',
    rating: 4.9,
    description: 'Mantenimiento y diseño de jardines con plantas de bajo mantenimiento.',
    imageUrl: 'https://picsum.photos/id/145/400/300',
  ),
  MockService(
    title: 'Pintura profesional de interiores',
    category: 'Hogar',
    provider: 'Ana Gómez',
    location: 'Bosa, Bogotá',
    price: '\$270000.0',
    rating: 4.7,
    description: 'Pintura en paredes interiores con acabado uniforme y rápido secado.',
    imageUrl: 'https://picsum.photos/id/177/400/300',
  ),
  MockService(
    title: 'Limpieza premium de oficina',
    category: 'Limpieza',
    provider: 'Andrés Pérez',
    location: 'Chapinero, Bogotá',
    price: '\$250000.0',
    rating: 4.8,
    description: 'Limpieza profunda para oficinas, escritorios y áreas comunes.',
    imageUrl: 'https://picsum.photos/id/180/400/300',
  ),
];
 
const mockReviews = [
  'Muy buen servicio, llegó puntual y solucionó el problema.',
  'La atención fue clara y el precio justo.',
  'Recomendado, el trabajo quedó muy bien hecho.',
];
 