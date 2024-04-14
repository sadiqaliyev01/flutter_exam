import 'package:flutter/material.dart';
import 'package:flutter_exam/data/models/store_model.dart';

class ProductItem extends StatelessWidget {
  final Products product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.restore_from_trash_rounded)),
          Image.network(product.image ?? ''),
          const SizedBox(height: 8),
          Text(product.title ?? ''),
          const SizedBox(height: 8),
          Text('\$${product.price ?? 0}'),
        ],
      ),
    );
  }
}
