class OnboardModel {
  final String image;
  final String name;

  const OnboardModel({required this.image, required this.name});
}

List<OnboardModel> onboarding = [
  const OnboardModel(
    image: 'https://open-trip.id/storage/2019/01/600157.jpg',
    name: 'Explore with Us.',
  ),
  const OnboardModel(
    image: 'https://open-trip.id/storage/2019/01/tur-karimunjawa.jpg',
    name: "Nature's Beauty",
  ),
  const OnboardModel(
    image: 'https://open-trip.id/storage/2024/10/DJI_0961.jpg',
    name: 'Peaceful Destination',
  ),
  const OnboardModel(
    image: 'https://open-trip.id/storage/2024/10/DJI_0088-Copy.webp',
    name: 'Breathtaking View',
  ),
];

