import 'package:get/get.dart';

abstract class SplashScreenCo extends GetxController {
  starting();
}

class SplashScreenCoIm extends SplashScreenCo {
  @override
  void onInit() {
    starting() ;
    super.onInit();
  }

  @override
  starting() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/choselang');
    });
  }
}
