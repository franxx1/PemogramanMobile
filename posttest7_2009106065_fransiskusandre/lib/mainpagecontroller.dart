import 'package:get/get.dart';

class MainPageController extends GetxController {
    var pindah = 0.obs;

    void gantiPindah(int index) {
    pindah.value = index;
    update();
  }

}
