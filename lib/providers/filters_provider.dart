import 'package:flutter/material.dart';

import '../models/filter_model.dart';
import '../screens/main_screen/constant.dart' as sub;

class FilterProvider with ChangeNotifier {
  // it is gonna public because it is small project
  int currentIndex = 0;
  List<FilterModel> filters = sub.filters.map((e) => FilterModel(e)).toList();

  void setCurrentIndex(int x) {
    currentIndex = x;
    notifyListeners();
  }

  void getFromtList(List rawList) {
    // first we are going to clear to avoid any bug
    filters.clear();
    for (var i in rawList) {
      filters.add(FilterModel(i));
    }
  }
}
