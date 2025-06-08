import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/data/data_source/product_remote_data_source.dart';
import 'package:flutter_task/view/products_page.dart';
import 'package:flutter_task/view_model/product_bloc.dart';
import 'package:flutter_task/repositories/product_repository.dart';
import 'package:flutter_task/view_model/product_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductBloc(ProductRepository(ProductRemoteDataSource()))..add(LoadProductsEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductsPage(),
      ),
    );
  }
}
