import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam/data/models/store_model.dart';
import 'package:flutter_exam/data/product_cubit.dart';
import 'package:flutter_exam/presentation/pages/home/widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fake Store"),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(
              Icons.restore_from_trash_sharp,
            ),
          ),
        ],
      ),
      body: BlocBuilder<ProductCubit, List<Products>>(
        builder: (context, products) {
          if (products.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 510,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductItem(product: products[index]);
                },
              ),
            );
          }
        },
      ),
    );
  }
}
