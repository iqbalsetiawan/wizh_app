import 'dart:math';

Random random = Random();

class TravelDestination {
  final int id, price, review;
  final List<String>? image, tnc;
  final String name, description, category, location, coordinates;
  final double rate, distanceFromCenter;

  TravelDestination({
    required this.name,
    required this.price,
    required this.id,
    required this.category,
    required this.description,
    required this.review,
    required this.image,
    required this.rate,
    required this.location,
    required this.tnc,
    required this.coordinates,
    required this.distanceFromCenter,
  });
}

List<TravelDestination> myDestinations = [
  TravelDestination(
    id: 2,
    name: 'Gunung Bromo Midnight Sunrise',
    category: 'open',
    image: [
      'https://open-trip.id/storage/2019/01/600157.jpg',
      'https://open-trip.id/storage/2019/01/63ecbcfd42e7406d7e88b57d40b3ef03.jpg',
      'https://open-trip.id/storage/2024/08/gunung-bromo-sunrise-midnight-1-scaled.webp',
    ],
    location: 'Malang, Indonesia',
    coordinates: '-7.9425, 112.9453',
    review: random.nextInt(300) + 25,
    price: 2100000,
    description:
        'Witness the breathtaking sunrise at Gunung Bromo, an unforgettable experience with stunning vistas and a magical atmosphere.',
    rate: 4.9,
    distanceFromCenter: 45.0,
    tnc: tnc,
  ),
  TravelDestination(
    id: 7,
    price: 2400000,
    name: 'Tur Karimun Jawa',
    image: [
      'https://open-trip.id/storage/2019/01/tur-karimunjawa.jpg',
      'https://open-trip.id/storage/2019/01/tur-wisata-karimunjawa.jpg',
      'https://open-trip.id/storage/2019/01/trip-karimunjawa-start-jakarta.jpg',
    ],
    review: random.nextInt(300) + 25,
    category: 'open',
    location: 'Jepara, Indonesia',
    coordinates: '-6.7422, 110.8039',
    description:
        'Explore the pristine beaches and vibrant marine life of Karimun Jawa, a tropical paradise perfect for nature enthusiasts and adventurers.',
    rate: 4.8,
    distanceFromCenter: 120.0,
    tnc: tnc,
  ),
  TravelDestination(
    id: 8,
    name: 'Tur Belitung 3 Hari 2 Malam',
    review: random.nextInt(300) + 25,
    price: 1900000,
    category: 'open',
    image: [
      'https://open-trip.id/storage/2022/07/bg-belitung-reguler_1400x1120.webp',
      'https://open-trip.id/storage/2022/07/tur-belitung-3-hari-2-malam-2.png',
      'https://www.belitungtour.id/wp-content/uploads/2022/05/paket-tour-belitung-murah-4d3n-2.jpg',
    ],
    location: 'Bangka Belitung, Indonesia',
    coordinates: '-2.7306, 107.5569',
    description:
        'Discover the charm of Belitung with its stunning beaches, unique granite rock formations, and rich cultural heritage over three days.',
    rate: 4.5,
    distanceFromCenter: 90.0,
    tnc: tnc,
  ),
  TravelDestination(
    id: 1,
    name: 'Tur Nusa Penida Area Barat 1 Hari',
    review: random.nextInt(300) + 25,
    price: 2800000,
    category: 'open',
    image: [
      'https://open-trip.id/storage/2024/10/The-stunning-Broken-Beach-in-Nusa-Penida-Bali-Tur-Nusa-Penida-Area-Barat.jpg',
      'https://open-trip.id/storage/2024/10/broken-beach-Tur-Nusa-Penida-Area-Barat.jpg',
      'https://open-trip.id/storage/2024/10/Kelingking-Beach-Nusa-Penida-Bali-Indonesia-Tur-Nusa-Penida-Area-Barat.jpg',
    ],
    location: 'Bali, Indonesia',
    coordinates: '-8.7096, 115.5381',
    description:
        'Experience the beauty of Nusa Penida’s west coast, featuring spectacular cliffs, turquoise waters, and iconic beaches.',
    rate: 4.6,
    distanceFromCenter: 220.0,
    tnc: tnc,
  ),
  TravelDestination(
    id: 9,
    name: 'Kapal Phinisi Labuan Bajo Deluxe 2',
    review: random.nextInt(300) + 25,
    category: 'private',
    price: 2200000,
    image: [
      'https://open-trip.id/storage/2024/10/DJI_0960.jpg',
      'https://open-trip.id/storage/2024/10/IMG_4428-scaled.jpg',
      'https://open-trip.id/storage/2024/10/maheswari_relax_space_1-Copy.webp',
    ],
    location: 'Labuan Bajo, Indonesia',
    coordinates: '-8.4622, 119.9121',
    description:
        'Sail through the stunning waters of Labuan Bajo aboard a deluxe Phinisi boat, offering luxury and relaxation amidst nature.',
    rate: 4.7,
    distanceFromCenter: 150.0,
    tnc: tnc,
  ),
  TravelDestination(
    id: 12,
    name: 'Kapal Phinisi Labuan Bajo Luxury 5',
    category: 'private',
    review: random.nextInt(300) + 25,
    price: 3100000,
    image: [
      'https://open-trip.id/storage/2024/10/DJI_0160-scaled.jpg',
      'https://open-trip.id/storage/2024/10/DJI_0186-Copy.webp',
      'https://open-trip.id/storage/2024/10/DJI_0389-scaled.jpg',
    ],
    location: 'Labuan Bajo, Indonesia',
    coordinates: '-8.4622, 119.9121',
    description:
        'Indulge in a luxurious sailing experience on a Phinisi yacht in Labuan Bajo, surrounded by breathtaking scenery and crystal-clear waters.',
    rate: 4.8,
    distanceFromCenter: 150.0,
    tnc: tnc,
  ),
  TravelDestination(
    id: 14,
    name: 'Kapal Phinisi Labuan Bajo Luxury 4',
    review: random.nextInt(300) + 25,
    category: 'private',
    price: 2500000,
    image: [
      'https://open-trip.id/storage/2024/10/DJI_0088-Copy.webp',
      'https://open-trip.id/storage/2024/10/WHY01165-Copy.webp',
      'https://open-trip.id/storage/2024/10/GOPR6860-HDR-2-Copy.webp',
    ],
    location: 'Labuan Bajo, Indonesia',
    coordinates: '-8.4622, 119.9121',
    description:
        'Enjoy a premium cruise on a Phinisi vessel in Labuan Bajo, complete with exquisite amenities and stunning ocean views.',
    rate: 4.7,
    distanceFromCenter: 150.0,
    tnc: tnc,
  ),
];

const tnc = [
  '1. You must follow all rules and regulations of the location.',
  '2. No smoking or littering is allowed on the premises.',
  '3. The service is not refundable under certain conditions.',
];
