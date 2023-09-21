class ProductModel {
  final int id;
  final String title;
  final String description;
  final String image;
  final RatingModel rating;
  final dynamic price;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.rating,
    required this.price,
    required this.category,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      image: jsonData['image'],
      price: jsonData['price'],
      category: jsonData['category'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final dynamic rate;
  final dynamic count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData?['rate'], count: jsonData?['count']);
  }
}
