import 'package:flutter/material.dart';
import 'package:webtoon_s/screens/home_screen.dart';
import 'package:webtoon_s/services/api_service.dart';

void main() {
  ApiService().getTodayToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
