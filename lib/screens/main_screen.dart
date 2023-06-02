import 'package:corchma_app/source/style.dart';
import 'package:flutter/material.dart';

import '../widgets/all_cars_view/all_cars_view.dart';
import '../widgets/custom_carousel.dart';
import '../widgets/filters_bar.dart';
import '../widgets/custom_bottom_navigation/custom_bottom_navigation.dart';
import '../widgets/plashka.dart';
import '../widgets/search_filter_icon.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              const SliverAppBar(
                  expandedHeight: 330,
                  backgroundColor: Colors.white,
                  // collapsedHeight: 249,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: [
                        CustomCarousel(),
                        PlashKa(),
                      ],
                    ),
                  )),
              const SliverAppBar(
                elevation: 0.0,
                backgroundColor: Colors.white,
                pinned: true,
                toolbarHeight: 180,
                flexibleSpace: Column(
                  children: [
                    SearchFilterIcon(),
                    FiltersBar(),
                  ],
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                const SizedBox(height: 30),
                const AllCardsView(),
              ])),
            ],
          ),
          bottomNavigationBar: const CustomBottomNavigation()),
    );
  }
}
