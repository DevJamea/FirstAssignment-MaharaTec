import 'Rating.dart';

class Basic {
  int? id;
  String? title;
  num? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  Basic(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  Basic.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    price = map['price'];
    description = map['description'];
    category = map['category'];
    image = map['image'];
    rating = Rating.fromMap(map['rating']);
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    data['category'] = category;
    data['image'] = image;
    if (rating != null) {
      data['rating'] = rating!.toMap();
    }
    return data;
  }
}