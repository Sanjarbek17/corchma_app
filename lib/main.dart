import 'package:corchma_app/providers/slider_provider.dart';
import 'package:corchma_app/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainRoute());
}

class MainRoute extends StatelessWidget {
  const MainRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [
        ChangeNotifierProvider<SliderProvider>(
          create: (_) => SliderProvider(),
        ),
      ],
      child: const MainPage(),
    ));
  }
}
