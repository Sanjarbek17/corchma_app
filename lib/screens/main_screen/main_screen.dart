import 'package:flutter/material.dart';

import 'widgets/all_cars_view/all_cars_view.dart';
import 'widgets/custom_bottom_navigation/custom_bottom_navigation.dart';
import 'widgets/custom_carousel.dart';
import 'widgets/filters_bar.dart';
import 'widgets/plashka.dart';
import 'widgets/search_filter_icon.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: const [
            CustomCarousel(),
            PlashKa(),
            SearchFilterIcon(),
            FiltersBar(),
            SizedBox(height: 5),
            AllCardsView(),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigation());
  }
}
