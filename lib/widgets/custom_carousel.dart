import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:corchma_app/screens/action_screen.dart';
import 'package:corchma_app/providers/slider_provider.dart';

import '../constants/main_constant.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    SliderProvider slider = Provider.of<SliderProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                slider.setCurrentIndex(index);
              },
              padEnds: false,
              aspectRatio: 20.0 / 9.75,
              viewportFraction: 0.89,
              enableInfiniteScroll: false,
              // height: 199.0,
            ),
            items: slider.sliderList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     BackdropModalRoute<void>(
                      //       overlayContentBuilder: (context) => ActionPage(sliderModel: i),
                      //     ));
                      showBottomSheet(context: context, builder: (context) => ActionPage(sliderModel: i));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image.asset(i.imagePath, fit: BoxFit.fitWidth),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: slider.sliderList.map((i) {
              int index = slider.sliderList.indexOf(i);

              return Container(
                width: 24.0,
                height: 4.0,
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                  color: slider.currentIndex == index ? activeSliderColor : sliderColor,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
