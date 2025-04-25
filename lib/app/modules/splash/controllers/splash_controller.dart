import 'package:get/get.dart';
import 'package:onyx_delivery/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(Routes.LOGIN);
    });
  }
}
