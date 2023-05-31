import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final int price;
  final int lastPrice;
  final int weight;
  final bool isHit;

  const CustomCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.lastPrice,
    required this.weight,
    required this.isHit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 242, 242, 242),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                    child: Image.asset(imagePath, scale: 0.8, fit: BoxFit.cover),
                  ),
                  if (isHit)
                    Positioned(
                      top: 6,
                      left: 6,
                      child: Container(
                        width: 36,
                        height: 20,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 178, 56, 21)),
                        child: Center(
                          child: Text('ХИТ', style: Theme.of(context).textTheme.displaySmall, textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  const Positioned(
                    right: 8,
                    top: 8,
                    child: Icon(Icons.favorite, size: 24, color: Color.fromARGB(173, 90, 90, 90), fill: 0.5),
                  ),
                  const Positioned(
                    right: 8,
                    top: 8,
                    child: Icon(Icons.favorite_border_outlined, size: 24, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 8),
                    Text('$weight г', style: Theme.of(context).textTheme.bodySmall),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      minimumSize: MaterialStateProperty.all<Size>(const Size(165, 45)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Color.fromARGB(255, 178, 56, 21),
                          // margin: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                          behavior: SnackBarBehavior.floating,
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  Text('2 товара', style: TextStyle(color: Colors.white, fontSize: 16)),
                                ],
                              ),
                              Text('800 p.', style: TextStyle(color: Colors.white, fontSize: 16)),
                            ],
                          ),
                        ),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: '$lastPrice ₽', style: Theme.of(context).textTheme.bodyMedium?.copyWith(decoration: TextDecoration.lineThrough, color: const Color.fromARGB(255, 130, 130, 130))),
                          const TextSpan(text: '  '),
                          TextSpan(text: '$price ₽', style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
