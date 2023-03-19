import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc_pattern/bloc/cart_bloc.dart';
import 'package:flutter_bloc_pattern/bloc/product_bloc.dart';
import 'package:flutter_bloc_pattern/model/cart.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alışveriş'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/cart");
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: buildProductList(),
    );
  }

  buildProductList() {
    return StreamBuilder(
      initialData: productBloc.getAll(),
      stream: productBloc.getStream,
      builder: (context, snapshot) {
        return snapshot.data.length > 0
            ? buidProductListItems(snapshot)
            : Center(
                child: Text('Data Yok!'),
              );
      },
    );
  }

  buidProductListItems(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final list = snapshot.data;
        return ListTile(
          title: Text(list[index].name),
          subtitle: Text(list[index].price.toString()),
          trailing: IconButton(
              onPressed: () {
                cartBloc.addToCart(Cart(list[index], 1));
              },
              icon: Icon(Icons.add_shopping_cart)),
        );
      },
      itemCount: snapshot.data.length,
    );
  }
}
