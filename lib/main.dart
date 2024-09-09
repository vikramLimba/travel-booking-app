import 'package:flutter/material.dart';
import 'package:travel_booking_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown.shade100),
          fontFamily: "Poiret_One"),
      home: const MyHomePage(),
    );
  }
}
