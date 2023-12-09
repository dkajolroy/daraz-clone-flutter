import 'package:daraz/navigations/bottom_navigation.dart';
import 'package:daraz/screens/account_screen.dart';
import 'package:daraz/screens/cart_screen.dart';
import 'package:daraz/screens/home_screen.dart';
import 'package:flutter/material.dart';

class NavigationController extends StatelessWidget {
  const NavigationController({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: pages,
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

List<Widget> pages = [HomeScreen(), const CartScreen(), const AccountScreen()];
