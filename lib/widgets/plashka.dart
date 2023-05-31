import 'package:flutter/material.dart';

import '../constants/main_constant.dart';

class PlashKa extends StatelessWidget {
  const PlashKa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: plashkaColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/CircleWavy.png'),
          SizedBox(
            width: 220,
            child: Text(
              'Доставка в пределах МКАД, а также в районы Солнцево, Одинцово, Бутово и Щербинка - бесплатно.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: const Color.fromARGB(255, 28, 28, 28)),
              overflow: TextOverflow.clip,
            ),
          ),
          const Center(
            child: Icon(
              Icons.navigate_next_rounded,
              size: 40,
              color: nextIconColor,
            ),
          ),
        ],
      ),
    );
  }
}
