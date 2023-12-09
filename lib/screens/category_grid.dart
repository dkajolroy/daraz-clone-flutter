import 'package:daraz/controller/category_controller.dart';
import 'package:daraz/screens/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryGrid extends StatelessWidget {
  CategoryGrid({super.key});

  final CategoryController _categoryCon = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            childAspectRatio: 0.8,
            mainAxisSpacing: 10,
            crossAxisCount: 5),
        itemBuilder: (context, index) {
          final item = _categoryCon.categoryList[index];
          return CategoryTile(item: item);
        },
      ),
    );
  }
}
