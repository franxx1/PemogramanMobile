import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106065_fransiskusandre/detailcontroller.dart';

class detail extends StatelessWidget {
  const detail({
    Key? key,
    required this.judul,
    this.langkah = "",
    this.notif = "",
    this.catatan = "",
    required this.waktu,
  }) : super(key: key);

  final String judul;
  final String langkah;
  final String notif;
  final String catatan;
  final String waktu;

  Widget jarak() {
    return SizedBox(
      height: 30,
    );
  }

  Widget masukan({
    required TextEditingController controller_,
    required String text,
    dynamic type = TextInputType.text,
  }) {
    return TextField(
      keyboardType: type,
      controller: controller_,
      decoration: InputDecoration(
        labelText: text,
        fillColor: Colors.white,
        filled: true,
      ),
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    DetailController detailController = Get.put(DetailController());
    detailController.judulController.text = judul;
    detailController.langkahController.text = langkah;
    detailController.notifController.text = notif;
    detailController.catatanController.text = catatan;
    detailController.waktuController.text = waktu;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 104, 177, 143),
        title: Text(judul),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          jarak(),
          masukan(
            controller_: detailController.judulController,
            text: "Nama Kegiatan",
          ),
          jarak(),
          masukan(
            controller_: detailController.waktuController,
            text: "Waktu",
          ),
          jarak(),
          masukan(
            controller_: detailController.langkahController,
            text: "langkah",
          ),
          jarak(),
          masukan(
            controller_: detailController.notifController,
            text: "notif",
          ),
          jarak(),
          masukan(
            controller_: detailController.catatanController,
            text: "catatan",
          ),
          jarak(),
          jarak(),
          jarak(),
          SizedBox(
            width: fullWidth,
            height: 64,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 211, 170, 81),
              ),
              child: Text(
                "Simpan",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
