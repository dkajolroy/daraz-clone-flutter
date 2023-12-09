import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double total;
  const Rating({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.orange,
          size: 12,
        ),
        Text(
          "${total.toString()}/5",
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        )
      ],
    );
  }
}
