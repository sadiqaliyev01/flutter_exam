import 'package:dio/dio.dart';
import 'package:flutter_exam/data/models/store_model.dart';
import 'package:flutter_exam/endpoints/endpoints.dart';
import 'package:flutter_exam/extensions/int_extension.dart';

Future<List<Products>> product({
  required String image,
  required String title,
}) async {
  const endpoint = Endpoints.baseUrl;
  final dio = Dio();

  final response = await dio.get(
    endpoint,
  );
  final List data = response.data;
  if(response.statusCode.isSuccess) {
    return data.map((e) => Products.fromJson(e)).toList();
  }
  throw Exception();
}
