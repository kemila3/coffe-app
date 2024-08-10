class CoffeModel {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String price;

  CoffeModel({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory CoffeModel.fromMap(Map<String, dynamic> json) {
    return CoffeModel(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      imageUrl: json["imageUrl"],
      price: json["price"],
    );
  }
}
