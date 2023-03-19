import 'package:flutter_bloc_pattern/model/product.dart';

class Cart {
  Product? product;
  int? quantity;
  Cart(list, int i, {this.product, this.quantity});
}
