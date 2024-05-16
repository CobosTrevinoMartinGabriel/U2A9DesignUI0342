class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

List<Product> products = [
  Product(
      name: "Capcom Fighting collection", image: "assets/cfc.png", price: 83),
  Product(name: "Devil May Cry 5", image: "assets/dmc5.png", price: 689.3),
  Product(name: "Resident Evil 2", image: "assets/RE2.png", price: 866.51),
  Product(name: "Ultra Street fighter", image: "assets/usf.png", price: 100),
];
