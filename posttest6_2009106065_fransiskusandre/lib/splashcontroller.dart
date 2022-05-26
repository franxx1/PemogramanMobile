import 'dart:async';

import 'package:get/get.dart';
import 'package:posttest6_2009106065_fransiskusandre/home.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashStart();
  }

  splashStart() {
    var durasi = const Duration(seconds: 5);
    return Timer(
      durasi,
      () {
        Get.off(() => myc());
      },
    );
  }
}
