import 'package:daraz/data/sticky_item.dart';
import 'package:flutter/material.dart';

class StickyItemTile extends StatelessWidget {
  final StickyItem item;
  const StickyItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: item.isSelected ? Colors.orange[100] : Colors.white,
          border: Border.all(
              color: item.isSelected ? Colors.orange : (Colors.grey[400]!)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            child: Image(image: AssetImage(item.image)),
          )),
          Expanded(
            child: Text(
              item.title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
