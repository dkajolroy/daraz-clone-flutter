import 'dart:convert';

import 'package:daraz/data/config.dart';
import 'package:daraz/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<ProductModel>> fetchProduct() async {
    final response =
        await http.get(Uri.parse("${ConfigApp.baseApiUrl}/products"));
    if (response.statusCode == 200) {
      final decode = jsonDecode(response.body);
      // print("xxxxxxxxxx${decode['products']}");
      final data = decode["products"]
          .map<ProductModel>((ele) => ProductModel.fromJson(ele))
          .toList();
      return data;
    } else {
      throw Exception("Failed to fetch products");
    }
  }
}
