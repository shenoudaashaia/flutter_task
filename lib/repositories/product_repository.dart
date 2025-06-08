import 'package:flutter_task/data/data_source/product_remote_data_source.dart';
import 'package:flutter_task/data/model/product_model.dart';

class ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepository(this.remoteDataSource);

  Future<List<ProductModel>> getProducts() async {
    return await remoteDataSource.fetchProducts();
  }
}
