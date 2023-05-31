import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> products = [
    ProductModel(name: 'Картофель жареный с лучком', imagePath: 'assets/images/photo.png'),
    ProductModel(name: 'Жаркое Бограч', imagePath: 'assets/images/photo (1).png'),
    ProductModel(name: 'Картофель жареный с лучком', imagePath: 'assets/images/photo (2).png'),
    ProductModel(name: 'Фреш Яблочно-морковный 300 мл', imagePath: 'assets/images/photo (3).png'),
    ProductModel(name: 'Свинина, запеченная под соусом из ...', imagePath: 'assets/images/photo (4).png'),
    ProductModel(name: 'Сытный завтрак', imagePath: 'assets/images/photo (5).png'),
  ];
}
