import 'package:flutter_bloc_pattern/model/product.dart';

class ProductService {
  static List<Product> products = [];

  static ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }

  ProductService._internal();

  static List<Product> getAll() {
    products.add(Product(id: 1, name: 'Acer', price: 6000));
    products.add(Product(id: 2, name: 'Acer', price: 6000));
    products.add(Product(id: 3, name: 'Acer', price: 6000));
    return products;
  }
}
