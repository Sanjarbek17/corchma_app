import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          SvgPicture.asset('assets/icons_images/icon-search (1).svg'),
          const SizedBox(width: 10),
          SvgPicture.asset('assets/icons_images/icon-filter (1).svg'),
          const SizedBox(width: 10),
          SvgPicture.asset('assets/icons_images/icon-heart (1).svg'),
        ],
      ),
    );
  }
}
