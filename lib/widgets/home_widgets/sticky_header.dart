import 'package:daraz/data/sticky_item.dart';
import 'package:daraz/widgets/home_widgets/sticky_item_tile.dart';
import 'package:flutter/material.dart';

class MyStickyHeader extends StatelessWidget {
  const MyStickyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Just For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Based on your activity",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: stickyList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                final item = stickyList[index];
                return StickyItemTile(item: item);
              },
            ))
      ],
    );
  }
}
