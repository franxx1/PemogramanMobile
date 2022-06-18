import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  String id;

  DetailController(this.id);

  @override
  void onInit() {
    fillController(id);
    super.onInit();
  }

  fillController(String id) async {
    await FirebaseFirestore.instance.collection("todo").doc(id).get().then(
          (e) => {
            judulController.text = e.get("judul"),
            notifController.text = e.get("notif"),
            langkahController.text = e.get("langkah"),
            waktuController.text = e.get("waktu"),
            catatanController.text = e.get("catatan"),
          },
        );
  }

  final judulController = TextEditingController();
  final notifController = TextEditingController();
  final langkahController = TextEditingController();
  final waktuController = TextEditingController();
  final catatanController = TextEditingController();
}
