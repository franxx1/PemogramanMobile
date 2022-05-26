import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106065_fransiskusandre/controlinput.dart';
import 'package:posttest6_2009106065_fransiskusandre/todo.dart';

class InputPage extends StatelessWidget {
  KontrolInput kontrolInput = Get.put(KontrolInput());
  ToDoList toDoList = Get.put(ToDoList());

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

  Widget gayatext(String kata) {
    return Text(
      kata,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: fullWidth,
        height: fullHeight,
        color: Color.fromARGB(255, 116, 175, 175),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  jarak(),
                  jarak(),
                  Text(
                    "How Your Day?",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  jarak(),
                  masukan(
                    controller_: kontrolInput.kegiatanController,
                    text: "Nama Kegiatan",
                  ),
                  jarak(),
                  masukan(
                    controller_: kontrolInput.waktuController,
                    text: "Waktu",
                  ),
                  jarak(),
                  Obx(
                    () => ListTile(
                      onTap: () {
                        kontrolInput.status.value = !kontrolInput.status.value;
                      },
                      title: Text(
                        "Selesai",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      leading: Checkbox(
                        value: kontrolInput.status.value,
                        onChanged: (value) {
                          kontrolInput.status.value = value ?? false;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: fullWidth,
                    height: 64,
                    child: ElevatedButton(
                      onPressed: () {
                        kontrolInput.kegiatan.value =
                            kontrolInput.kegiatanController.text;
                        kontrolInput.waktu.value =
                            kontrolInput.waktuController.text;
                        final snackbar =
                            SnackBar(content: Text("Berhasil Ditambahkan"));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);

                        toDoList.toDoList.add(
                          ToDo(
                            judul: kontrolInput.kegiatanController.text,
                            waktu: kontrolInput.waktuController.text,
                          ),
                        );

                        kontrolInput.kegiatanController.text = "";
                        kontrolInput.waktuController.text = "";
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
                  jarak(),
                  Container(
                    width: fullWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          gayatext(
                              "Nama Kegiatan : ${kontrolInput.kegiatan.value}"),
                          gayatext("Waktu : ${kontrolInput.waktu.value}"),
                          gayatext(
                              "Status :${kontrolInput.status.value ? 'Selesai' : 'Belum Selesai'}"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
