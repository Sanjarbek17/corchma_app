import 'package:flutter/material.dart';

import '../models/slider_model.dart';

class SliderProvider extends ChangeNotifier {
  int currentIndex = 0;

  final List<SliderModel> _sliderList = [
    SliderModel(imagePath: 'assets/images/Slide_01.png'),
    SliderModel(imagePath: 'assets/images/Slide_02.png'),
    SliderModel(imagePath: 'assets/images/Slide_01.png'),
    SliderModel(imagePath: 'assets/images/Slide_02.png'),
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
