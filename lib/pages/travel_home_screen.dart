import 'package:flutter/material.dart';
import 'package:wizh_travel/const.dart';
import 'package:wizh_travel/model/travel_model.dart';
import 'package:wizh_travel/pages/travel_detail.dart';
import 'package:wizh_travel/widgets/recommendation.dart';

class TravelHomeScreen extends StatefulWidget {
  const TravelHomeScreen({super.key});

  @override
  State<TravelHomeScreen> createState() => _TravelHomeScreenState();
}

class _TravelHomeScreenState extends State<TravelHomeScreen> {
  int selectedPage = 0;
  int selectedCategoryIndex = 0;

  late List<TravelDestination> originalDestinations;
  late List<TravelDestination> filteredDestinations;

  final List<Map<String, String>> categories = [
    {'type': 'all', 'name': 'All'},
    {'type': 'open', 'name': 'Open Trip'},
    {'type': 'private', 'name': 'Private Trip'},
  ];

  @override
  void initState() {
    super.initState();
    originalDestinations = myDestinations;
    filteredDestinations = List.from(originalDestinations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(),
            _buildCategoryList(),
            _buildSectionTitle('Recommended For You'),
            _buildRecommendationList(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.location_on,
                  color: kButtonColor,
                  size: 24,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your Location',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Indonesia',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 18,
                        color: Colors.black.withOpacity(0.5),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              _buildNotificationButton(),
              const SizedBox(width: 12),
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: const Icon(
                  Icons.person_outline,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationButton() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(9),
      child: Stack(
        children: [
          const Icon(
            Icons.notifications_none_rounded,
            color: Colors.black54,
            size: 26,
          ),
          Positioned(
            top: 2,
            right: 2,
            child: Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryList() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategoryIndex = index;
                if (categories[index]['type'] == 'all') {
                  filteredDestinations = List.from(originalDestinations);
                } else {
                  filteredDestinations = originalDestinations
                      .where((element) =>
                          element.category == categories[index]['type'])
                      .toList();
                }
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: selectedCategoryIndex == index
                    ? kButtonColor
                    : Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  categories[index]['name']!,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: selectedCategoryIndex == index
                        ? Colors.white
                        : Colors.black54,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildRecommendationList() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.height * 0.02,
        ),
        itemCount: filteredDestinations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: filteredDestinations.length - 1 == index
                  ? 0
                  : MediaQuery.of(context).size.height * 0.02,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlaceDetailScreen(
                      destination: filteredDestinations[index],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Recommendation(
                  destination: filteredDestinations[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
