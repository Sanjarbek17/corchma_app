import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:corchma_app/providers/product_provider.dart';

import 'widgets/customcard.dart';

class AllCardsView extends StatelessWidget {
  const AllCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    ProductProvider product = Provider.of<ProductProvider>(context);
    return GridView.count(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        mainAxisSpacing: 16,
        crossAxisSpacing: 13,
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 0.72,
        children: product.products
            .map((product) => CustomCard(
                  name: product.name,
                  imagePath: product.imagePath,
                  price: product.price,
                  lastPrice: product.lastPrice,
                  weight: product.weight,
                  isHit: product.isHit,
                ))
            .toList());
  }
}
