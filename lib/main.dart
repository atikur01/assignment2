import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App UI',
      home: const HomePage(),
    );
  }
}


