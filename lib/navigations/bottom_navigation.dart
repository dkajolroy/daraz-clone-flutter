import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:daraz/controller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final NavigationController navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Obx(
      () => BottomBarFloating(
        items: items,
        backgroundColor: Colors.white,
        color: Colors.grey,
        colorSelected: Colors.red,
        indexSelected: navController.currentIndex.value,
        onTap: (index) {
          navController.setIndex(index);
        },
        paddingVertical: 10,
      ),
    ));
  }
}

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.favorite_border,
    title: 'Wishlist',
  ),
  TabItem(
    icon: Icons.shopping_cart,
    title: 'Cart',
  ),
  TabItem(
    icon: Icons.person,
    title: 'Account',
  ),
];
