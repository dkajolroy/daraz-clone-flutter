import 'package:daraz/services/api_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = [].obs;
  var isLoading = true.obs;
  var isError = null.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    _getProductList();
    super.onInit();
  }

  void _getProductList() async {
    final products = await ApiService.fetchProduct();
    if (products.isNotEmpty) {
      productList.clear();
      productList.addAll(products);
      isLoading.value = false;
    }
  }
}
