import 'dart:convert';
import 'package:flutter_task/data/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDataSource {
  Future<List<ProductModel>> fetchProducts() async {
    final response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}
