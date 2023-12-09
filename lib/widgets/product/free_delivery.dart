import 'package:flutter/material.dart';

class FreeDelivery extends StatelessWidget {
  const FreeDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            // padding: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
            child: const Text(
              "Free delivery",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Colors.teal),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            // padding: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
            child: const Text(
              "4 voucher",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10, color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
