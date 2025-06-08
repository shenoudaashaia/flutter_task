import 'package:flutter/foundation.dart';
import 'rating.dart';

@immutable
class ProductModel {
	final int id;
	final String title;
	final double price;
	final String description;
	final String category;
	final String image;
	final Rating rating;

	const ProductModel({
	required	this.id, 
	required	this.title, 
	required	this.price, 
	required	this.description, 
	required	this.category, 
	required	this.image, 
	required	this.rating, 
	});

	factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
				id: json['id'] as int,
				title: json['title'] as String,
				price: (json['price'] as num).toDouble(),
				description: json['description'] as String,
				category: json['category'] as String,
				image: json['image'] as String,
				rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
			);

}
