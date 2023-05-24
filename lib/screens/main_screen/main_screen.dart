import 'package:flutter/material.dart';

import '../../source/figma_custom_icons.dart';
import 'subdir/widgets/widgets.dart';

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
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 51, 51, 51),
              // spreadRadius: 7,
              blurRadius: 2,
              blurStyle: BlurStyle.outer,
              // offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(FigmaIcons.menu, size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(FigmaIcons.menuspec, size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(FigmaIcons.map, size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(FigmaIcons.action, size: 28),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(FigmaIcons.user, size: 28),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
