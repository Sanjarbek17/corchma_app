import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:corchma_app/providers/filters_provider.dart';

class FiltersBar extends StatelessWidget {
  const FiltersBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FilterProvider filter = Provider.of<FilterProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: filter.filters
                    .mapIndexed((index, i) => Builder(
                          builder: (context) {
                            return TextButton(
                              style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.only(right: 5))),
                              onPressed: () => filter.setCurrentIndex(index),
                              child: Text(
                                i.name,
                                style: filter.currentIndex == index ? const TextStyle(color: Colors.red) : const TextStyle(color: Colors.black),
                              ),
                            );
                          },
                        ))
                    .toList()),
          ),
          const SizedBox(height: 5.0),
          Row(children: [Text(filter.filters[filter.currentIndex].name)]),
        ],
      ),
    );
  }
}
