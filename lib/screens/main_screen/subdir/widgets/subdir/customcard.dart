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
      margin: const EdgeInsets.all(16),
      // padding: EdgeInsets.all(6),
      color: const Color.fromARGB(255, 228, 228, 228),
      // width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                scale: 0.8,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name),
                    Text('$weight г'),
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
                      minimumSize: MaterialStateProperty.all<Size>(const Size(156, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                    ),
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: '$lastPrice ', style: const TextStyle(decoration: TextDecoration.lineThrough)),
                          TextSpan(text: '$price ₽', style: const TextStyle(fontWeight: FontWeight.bold)),
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
