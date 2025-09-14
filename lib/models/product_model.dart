
class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;
//  final RatingModel rating;
  final double rating;
  final int ratingCount;
  final double price;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
   required this.ratingCount,
    required this.rating,
    required this.price,
  });

  factory ProductModel.fromJson(Map json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['catego ry'],
      image: json['image'],
      rating: json['rating']['rate']* 1.0,
      ratingCount: json['rating']['count'],
      price: json['price'] * 1.0,
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(rate: json['rate'] * 1.0, count: json['count']);
  }
}
