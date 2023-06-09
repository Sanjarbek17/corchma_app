import 'package:corchma_app/providers/bottom_navigation_provider.dart';
import 'package:corchma_app/providers/filters_provider.dart';
import 'package:corchma_app/providers/product_provider.dart';
import 'package:corchma_app/providers/slider_provider.dart';
import 'package:corchma_app/screens/main_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'source/style.dart';

void main() {
  runApp(const MainRoute());
}

class MainRoute extends StatelessWidget {
  const MainRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<SliderProvider>(create: (_) => SliderProvider()),
            ChangeNotifierProvider<FilterProvider>(create: (_) => FilterProvider()),
            ChangeNotifierProvider<ProductProvider>(create: (_) => ProductProvider()),
            ChangeNotifierProvider<NavigationProvider>(create: (_) => NavigationProvider()),
          ],
          child: const SafeArea(child: MainPage()),
        ));
  }
}
