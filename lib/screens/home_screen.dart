import 'package:daraz/controller/product_controller.dart';
import 'package:daraz/widgets/home_widgets/appbar.dart';
import 'package:daraz/widgets/home_widgets/carousel.dart';
import 'package:daraz/widgets/product/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActiveColor = true;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    _scrollController.addListener(_updateScroll);
    super.initState();
  }

  void _updateScroll() {
    if (_scrollController.offset ==
        _scrollController.position.minScrollExtent) {
      setState(() {
        isActiveColor = true;
      });
    } else if (isActiveColor) {
      setState(() {
        isActiveColor = false;
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  final ProductController productCon = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(isActiveColor),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Carousel(),
            Obx(() => productCon.isLoading.value
                ? const CircularProgressIndicator()
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10),
                    itemCount: productCon.productList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.9,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      final item = productCon.productList[index];
                      return ProductTile(item: item);
                    },
                  ))
          ],
        ),
      ),
    );
  }
}
