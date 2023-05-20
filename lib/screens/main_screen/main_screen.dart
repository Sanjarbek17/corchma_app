import 'package:flutter/material.dart';
import 'subdir/constant.dart';
import 'subdir/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomCarousel(),
          const PlashKa(),
          const SearchFilterIcon(),
          Expanded(
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: filters
                    .map((i) => Builder(
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(i),
                            );
                          },
                        ))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
