import 'package:flutter/material.dart';
import 'subdir/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomCarousel(),
          PlashKa(),
          SearchFilterIcon(),
          FiltersBar(),
        ],
      ),
    );
  }
}
