import 'package:flutter/material.dart';

class ExploreHeader extends StatelessWidget {
  final String title;
  final String hintText;
  final String imageUrl;
  final double height;
  final ValueChanged<String>? onSearch;

  const ExploreHeader({
    super.key,
    required this.title,
    required this.hintText,
    required this.imageUrl,
    this.height = 300,
    this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(
          height: height,
          width: double.infinity,
          color: Colors.black.withOpacity(0.4),
        ),

        Positioned(
          left: 20,
          right: 20,
          bottom: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: onSearch,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ],
          ),
        ),

        const Positioned(top: 50, left: 0, right: 0, child: SizedBox()),
      ],
    );
  }
}
