import 'package:flutter/material.dart';

import '../constants/main_constant.dart';

class SearchFilterIcon extends StatelessWidget {
  const SearchFilterIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.search, color: nextIconColor),
          const SizedBox(width: 10),
          Image.asset('assets/icons_images/icon-filter.png'),
          const SizedBox(width: 10),
          Image.asset('assets/icons_images/icon-heart.png'),
        ],
      ),
    );
  }
}
