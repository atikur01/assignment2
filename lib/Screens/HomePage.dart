import 'package:flutter/material.dart';

import '../Widgets/DestinationCard.dart';
import '../Widgets/ExploreHeader.dart';
import '../Widgets/PackageCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    String headerImageLink = "https://images.unsplash.com/photo-1535827841776-24afc1e255ac?auto=format&fit=crop&w=800&q=80";


    final List<Map<String, String>> destinations = [
      {
        'name': 'Paris',
        'image':
            'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?auto=format&fit=crop&w=600&q=80',
      },
      {
        'name': 'Maldives',
        'image':
            'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?auto=format&fit=crop&w=600&q=80',
      },
      {
        'name': 'Dubai',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsxhN8lUkhnmPPGkU1wXKdiCsTJKGLYXoL1Q&s',
      },
      {
        'name': 'Bali',
        'image':
            'https://images.unsplash.com/photo-1537996194471-e657df975ab4?auto=format&fit=crop&w=600&q=80',
      },
    ];

    final List<Map<String, dynamic>> packages = [
      {
        'title': 'Romantic Paris Getaway',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO_f9k45VD6cRDwJ7A7b0j8HvRx-jlEChuUg&s',
        'duration': '4 nights - 5 days',
        'price': '\$799',
      },
      {
        'title': 'Bali Adventure Tour',
        'image':
            'https://images.unsplash.com/photo-1552733407-5d5c46c3bb3b?auto=format&fit=crop&w=600&q=80',
        'duration': '4 nights - 5 days',
        'price': '\$599',
      },
      {
        'title': 'Swiss Alps Skiing',
        'image':
            'https://images.unsplash.com/photo-1502784444187-359ac186c5bb?auto=format&fit=crop&w=600&q=80',
        'duration': '5 nights - 6 days',
        'price': '\$1200',
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExploreHeader(
              title: "Explore the World",
              hintText: "Search destination...",
              imageUrl: headerImageLink,
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                "Top Destinations",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: destinations.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.4,
                ),
                itemBuilder: (context, index) {
                  return DestinationCard(
                    name: destinations[index]['name']!,
                    imageUrl: destinations[index]['image']!,
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                "Trending Packages",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: packages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: PackageCard(
                    title: packages[index]['title'],
                    imageUrl: packages[index]['image'],
                    duration: packages[index]['duration'],
                    price: packages[index]['price'],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
