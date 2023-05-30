import 'package:corchma_app/models/slider_model.dart';
import 'package:flutter/material.dart';

class ActionPage extends StatelessWidget {
  final SliderModel sliderModel;
  const ActionPage({super.key, required this.sliderModel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                // onTapDown: (details) {
                //   print(details.localPosition.dy);
                //   // Navigator.pop(context);
                // },
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 36,
                  height: 4,
                  margin: const EdgeInsets.only(top: 16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 189, 189, 189),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 26.0,
                padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 24.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Image.asset(sliderModel.imagePath, fit: BoxFit.fitWidth),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sliderModel.title, style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8.0),
                Text(sliderModel.description, style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
