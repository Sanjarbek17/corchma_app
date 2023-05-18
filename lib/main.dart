import 'package:corchma_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainRoute());
}

class MainRoute extends StatelessWidget {
  const MainRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
