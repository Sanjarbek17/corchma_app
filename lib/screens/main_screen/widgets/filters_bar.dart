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
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    side: const BorderSide(color: Colors.transparent),
                                  ),
                                ),
                                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 10, vertical: 8)),
                                backgroundColor: filter.currentIndex == index ? MaterialStateProperty.all(const Color.fromARGB(255, 242, 242, 242)) : MaterialStateProperty.all(Colors.transparent),
                              ),
                              onPressed: () => filter.setCurrentIndex(index),
                              child: Text(
                                i.name,
                                style: filter.currentIndex == index ? Theme.of(context).textTheme.bodyLarge?.copyWith(color: const Color.fromARGB(255, 178, 56, 21)) : Theme.of(context).textTheme.bodyLarge,
                              ),
                            );
                          },
                        ))
                    .toList()),
          ),
          const SizedBox(height: 24.0),
          Row(children: [
            Text(
              filter.filters[filter.currentIndex].name,
              style: Theme.of(context).textTheme.titleLarge,
            )
          ]),
        ],
      ),
    );
  }
}
