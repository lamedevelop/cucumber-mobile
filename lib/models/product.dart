class Product {
  final String image;
  final String name;
  final String volume;
  final int price;
  final String description;

  Product({
    this.image = 'assets/images/milk.png',
    this.name = '',
    this.volume = '',
    this.price = 0,
    this.description = '',
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      // image: json['image'],
      name: json['p_name'],
      // volume: json['volume'],
      price: json['p_price'],
      // description: json['description'],
    );
  }
}

List<Product> sampleData = [];
