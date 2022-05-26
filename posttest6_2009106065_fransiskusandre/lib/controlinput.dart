import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KontrolInput extends GetxController {
  var kegiatan = "".obs;
  var waktu = "".obs;
  var status = false.obs;

  final kegiatanController = TextEditingController();
  final waktuController = TextEditingController();
}
