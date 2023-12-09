import 'package:flutter/material.dart';

PreferredSizeWidget? viewProductAppBar() {
  return AppBar(
    // backgroundColor: isActiveColor ? Colors.transparent : Colors.white,
    elevation: 0,
    surfaceTintColor: Colors.transparent,
    // leading: IconButton(
    //     onPressed: () {},
    //     icon: const Icon(
    //       Icons.qr_code_scanner,
    //     )),
    leadingWidth: 50,
    titleSpacing: 0,
    title: SizedBox(
      height: 35,
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.grey[200],
            filled: true,
            contentPadding: EdgeInsets.zero,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.orange)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            prefixIconConstraints: const BoxConstraints.tightFor(width: 40),
            hintText: "Search ...",
            hintStyle: const TextStyle(color: Colors.grey)),
      ),
    ),
    actions: [
      const SizedBox(
        width: 5,
      ),
      SizedBox(
          width: 40,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share_outlined,
                // color: Colors.orange,
              ))),
      SizedBox(
          width: 40,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined))),
      SizedBox(
          width: 40,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz_outlined,
                // color: Colors.orange,
              ))),
      const SizedBox(
        width: 5,
      ),
    ],
  );
}
