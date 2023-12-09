import 'package:daraz/data/dummy.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxList<dynamic> categoryList = [].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    categoryList.addAll(categories);
    super.onInit();
  }
}
