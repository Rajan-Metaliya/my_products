import 'package:flutter/material.dart';
import 'package:my_products_client/my_products_client.dart';
import 'package:my_products_flutter/main.dart';

import '../widgets/product_card.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();

    _getProducts();
  }

  void _getProducts() async {
    final products = await client.product.getAllProducts();
    setState(() {
      this.products = products;
    });
  }

  void _deleteProducts(int id) {
    client.product.deleteProduct(id);
    _getProducts();
  }

  void _addProducts() {
    final product = Product(
      name: 'New Product',
      price: 20.0,
      image: 'https://picsum.photos/200/300',
      createdOn: DateTime.now(),
      isLiked: false,
      noOfItems: 10,
    );
    client.product.insertProduct(product);
    _getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _addProducts,
            ),
            const SizedBox(width: 50)
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
              product: product,
              onLike: (isLiked) {
                product.isLiked = isLiked;
                client.product.updateProduct(product);
                setState(() {});
              },
              onDelete: (id) {
                _deleteProducts(id);
              },
            );
          },
          itemCount: products.length,
        ));
  }
}
