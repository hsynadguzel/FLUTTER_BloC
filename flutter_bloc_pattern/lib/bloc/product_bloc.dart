import 'dart:async';

import 'package:flutter_bloc_pattern/data/product_service.dart';
import 'package:flutter_bloc_pattern/model/product.dart';

class ProductBloc {
  final productStreamController = StreamController.broadcast();
  Stream get getStream => productStreamController.stream;
  List<Product> getAll() {
    return ProductService.getAll();
  }
}

final productBloc = ProductBloc();
