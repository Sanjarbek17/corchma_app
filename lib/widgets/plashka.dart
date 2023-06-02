import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/main_constant.dart';
import '../source/figma_custom_icons.dart';

class PlashKa extends StatelessWidget {
  const PlashKa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: plashkaColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/images/CircleWavy.svg'),
          SizedBox(
            width: 270,
            child: Text(
              'Доставка в пределах МКАД, а также в районы Солнцево, Одинцово, Бутово и Щербинка - бесплатно.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: const Color.fromARGB(255, 28, 28, 28), height: 1.1, fontWeight: FontWeight.w500),
              overflow: TextOverflow.clip,
            ),
          ),
          Center(
            child: FigmaIcons.right,
          ),
        ],
      ),
    );
  }
}
