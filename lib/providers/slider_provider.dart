import 'package:flutter/material.dart';

import '../models/slider_model.dart';

class SliderProvider extends ChangeNotifier {
  int currentIndex = 0;

  final List<SliderModel> _sliderList = [
    SliderModel(imagePath: 'assets/images/Slide_01.png', title: 'Доставка в пределах МКАД, а также...', description: 'При посещении ресторана! Действует в течении 7 дней! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et '),
    SliderModel(imagePath: 'assets/images/Slide_02.png', title: 'также в пределах МКАД, а также...', description: 'При посещении ресторана! Действует в течении 7 дней! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et '),
    SliderModel(imagePath: 'assets/images/Slide_01.png', title: 'МКАД - 10 км', description: 'При посещении ресторана! Действует в течении 7 дней! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et '),
    SliderModel(imagePath: 'assets/images/Slide_02.png', title: 'Действует в течении 7 дней!', description: 'При посещении ресторана! Действует в течении 7 дней! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et '),
  ];
  List<SliderModel> get sliderList => _sliderList;
  // setter for sliderList
  set sliderList(List<SliderModel> list) {
    _sliderList.clear();
    _sliderList.addAll(list);
    notifyListeners();
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
