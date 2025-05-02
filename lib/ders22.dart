import 'package:flutter/material.dart';
import 'package:ilkders/screens/home_page_ders22.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePageDers22());
  }
}
