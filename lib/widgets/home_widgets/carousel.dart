import 'package:daraz/controller/slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});
  final SliderController sliderCon = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => ImageSlideshow(
        isLoop: true,
        autoPlayInterval: 5000,
        children: sliderCon.sliderList
            .map((element) => Builder(
                  builder: (
                    context,
                  ) {
                    return SizedBox(
                      width: double.infinity,
                      child: Image(
                        image: AssetImage(element.image),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ))
            .toList()));
  }
}
