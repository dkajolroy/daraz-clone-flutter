import 'package:daraz/models/slider_model.dart';
import 'package:get/get.dart';

class SliderController extends GetxController {
  var sliderList = [].obs;
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    sliderList.clear();
    sliderList.addAll(_dummy);
    isLoading.value = false;
    super.onInit();
  }

  final List<SliderModel> _dummy = [
    SliderModel(
      id: "1",
      image: "assets/dummy/banner1.webp",
      isActive: true,
    ),
    SliderModel(
      id: "2",
      image: "assets/dummy/banner2.webp",
      isActive: true,
    ),
    SliderModel(
      id: "3",
      image: "assets/dummy/banner3.webp",
      isActive: true,
    ),
    SliderModel(
      id: "4",
      image: "assets/dummy/banner4.webp",
      isActive: true,
    ),
    SliderModel(
      id: "5",
      image: "assets/dummy/banner5.webp",
      isActive: true,
    ),
  ];
}
