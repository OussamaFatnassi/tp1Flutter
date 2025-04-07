class Product {
  final int id;
  final String title;
  final double price;
  final String image;
  final String description;
  final String category;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.description,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price:
          json['price'] is int
              ? (json['price'] as int).toDouble()
              : json['price'],
      image: json['image'],
      description: json['description'] ?? 'No description available',
      category: json['category'] ?? 'Unknown',
    );
  }
}
