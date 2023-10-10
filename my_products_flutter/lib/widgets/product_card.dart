import 'package:flutter/material.dart';
import 'package:my_products_client/my_products_client.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onLike,
    required this.onDelete,
  });

  final Product product;

  final void Function(bool) onLike;

  final void Function(int) onDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Image.network(product.image, fit: BoxFit.cover),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name),
                  Text(product.price.toString()),
                ],
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: Icon(
                  (product.isLiked) ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                onLike(!product.isLiked);
              },
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                if (product.id != null) {
                  onDelete(product.id ?? 0);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
