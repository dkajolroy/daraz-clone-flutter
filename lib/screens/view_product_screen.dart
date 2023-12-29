import 'package:daraz/models/product_model.dart';
import 'package:daraz/widgets/product/rating.dart';
import 'package:daraz/widgets/view_product_widget/appbar.dart';
import 'package:flutter/material.dart';

class ViewProductScreen extends StatelessWidget {
  final ProductModel item;
  const ViewProductScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: viewProductAppBar(),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Hero(
                    tag: "product_tile_image",
                    child: Image.network(item.thumbnail!)),
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: Colors.purple[800]),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.title!),
                          Row(
                            children: [
                              Text(
                                "৳${item.price}",
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "৳${item.price}",
                                style: const TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Rating(total: item.discountPercentage!)
                            ],
                          ),
                          Divider(
                            height: 1,
                            color: Colors.grey[200],
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.orange[100],
                                borderRadius: BorderRadius.circular(10)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Up to ৳4,480 off",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                Text(
                                  "5 Vouchers",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextButton.icon(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        foregroundColor: Colors.black),
                                    icon:
                                        const Icon(Icons.heart_broken_outlined),
                                    label: const Text("Add to wishlist")),
                              ),
                              Divider(
                                height: 20,
                                color: Colors.grey[200],
                              ),
                              Expanded(
                                child: TextButton.icon(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                        foregroundColor: Colors.black),
                                    icon:
                                        const Icon(Icons.heart_broken_outlined),
                                    label: const Text("Add to wishlist")),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
