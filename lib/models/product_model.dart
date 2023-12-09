class ProductModel {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  dynamic stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  ProductModel(
      {this.id,
      this.title,
      this.description,
      this.brand,
      this.category,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.images,
      this.thumbnail,
      this.price});
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    final discountPercentage =
        double.parse(json["discountPercentage"].toString());
    final rating = double.parse(json["rating"].toString());
    final images = List<String>.from(json["images"]);

    return ProductModel(
      id: json["id"],
      brand: json["brand"],
      category: json["category"],
      description: json["description"],
      discountPercentage: discountPercentage,
      images: images,
      price: json["price"],
      rating: rating,
      stock: json["stock"],
      thumbnail: json["thumbnail"],
      title: json["title"],
    );
  }
}
