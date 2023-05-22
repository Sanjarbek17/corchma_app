class ProductModel {
  String name;
  String imagePath;

  int price;
  int lastPrice;
  int weight;

  bool isHit;

  ProductModel({
    required this.name,
    required this.imagePath,
    this.price = 285,
    this.lastPrice = 1290,
    this.weight = 200,
    this.isHit = true,
  });
}
