import 'package:flutter/material.dart';

import 'subdir/widgets/all_cars_view/all_cars_view.dart';
import 'subdir/widgets/custom_bottom_navigation/custom_bottom_navigation.dart';
import 'subdir/widgets/custom_carousel.dart';
import 'subdir/widgets/filters_bar.dart';
import 'subdir/widgets/plashka.dart';
import 'subdir/widgets/search_filter_icon.dart';

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
