import 'package:daraz/models/product_model.dart';
import 'package:daraz/screens/view_product_screen.dart';
import 'package:daraz/widgets/product/free_delivery.dart';
import 'package:daraz/widgets/product/rating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductTile extends StatelessWidget {
  final ProductModel item;
  const ProductTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ViewProductScreen(item: item));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: Hero(
            tag: "product_tile_image",
            child: Image.network(
              item.thumbnail!,
              fit: BoxFit.cover,
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title!,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                  maxLines: 2,
                ),
                Rating(total: item.rating!),
                const SizedBox(
                  height: 5,
                ),
                const FreeDelivery(),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "৳${item.price}",
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      item.price.toString(),
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
