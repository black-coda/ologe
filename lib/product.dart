// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  final int id;
  final String title;
  final String description;
  final String imageURL;
  final String price;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.imageURL,
    required this.price,
  });

  Product copyWith({
    int? id,
    String? title,
    String? description,
    String? imageURL,
    String? price,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'imageURL': imageURL,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      imageURL: map['imageURL'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, imageURL: $imageURL, price: $price)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.imageURL == imageURL &&
      other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      imageURL.hashCode ^
      price.hashCode;
  }
}
