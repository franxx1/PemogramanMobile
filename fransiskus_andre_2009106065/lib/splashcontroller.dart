import 'dart:async';

import 'package:get/get.dart';
import 'package:fransiskus_andre_2009106065/home.dart';

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
