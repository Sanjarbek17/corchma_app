import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

import '../../../providers/filters_provider.dart';
import '../../../providers/slider_provider.dart';
import 'constant.dart';

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
                              style: ButtonStyle(padding: MaterialStateProperty.all(const EdgeInsets.only(right: 5))),
                              onPressed: () => filter.setCurrentIndex(index),
                              child: Text(
                                i.name,
                                style: filter.currentIndex == index ? const TextStyle(color: Colors.red) : const TextStyle(color: Colors.black),
                              ),
                            );
                          },
                        ))
                    .toList()),
          ),
          const SizedBox(height: 5.0),
          Row(children: [Text(filter.filters[filter.currentIndex].name)]),
        ],
      ),
    );
  }
}

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    SliderProvider slider = Provider.of<SliderProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                slider.setCurrentIndex(index);
              },
              padEnds: false,
              viewportFraction: 0.85,
              enableInfiniteScroll: false,
              height: 170.0,
            ),
            items: slider.sliderList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image.asset(
                        i.imagePath,
                        fit: BoxFit.fill,
                        scale: 3,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 16.0),
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
          const SizedBox(
            width: 220,
            child: Text(
              'Доставка в пределах МКАД, а также в районы Солнцево, Одинцово, Бутово и Щербинка - бесплатно.',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
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
