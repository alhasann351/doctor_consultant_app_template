import 'package:get/get.dart';

class ShimmerEffectController extends GetxController {
  RxBool isLoading = true.obs;

  Future<void> loadShimmerEffect() async {
    await Future.delayed(const Duration(seconds: 5));
    isLoading.value = false;
  }
}
