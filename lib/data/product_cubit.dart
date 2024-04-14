import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exam/data/models/store_model.dart';
import 'package:flutter_exam/data/services/store_service.dart';

class ProductCubit extends Cubit<List<Products>> {
  ProductCubit() : super([]);

  List<Products> removedProducts = [];

  void fetchProducts() async {
    try {
      final products = await product(image: '', title: '');
      emit(products);
    } catch (e) {
      log("Error");
    }
  }

}
