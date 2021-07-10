class Product {
  // final String image;
  final String name;
  // final String volume;
  final String price;
  // final String description;

  Product({
    // required this.image,
    required this.name,
    // required this.volume,
    required this.price,
    // required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      // image: json['image'],
      name: json['p_name'],
      // volume: json['volume'],
      price: json['p_price'].toString(),
      // description: json['description'],
    );
  }
}
