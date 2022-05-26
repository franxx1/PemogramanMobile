import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106065_fransiskusandre/detail.dart';
import 'package:posttest6_2009106065_fransiskusandre/todo.dart';

class BerandaPage extends StatelessWidget {
  ToDoList toDoList = Get.put(ToDoList());

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    return Container(
      width: fullWidth,
      height: fullHeight,
      margin: EdgeInsets.all(25),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: fullWidth,
              child: Text(
                "Hai\nFransiskus Andre",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Today Task",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: toDoList.toDoList.length,
                  itemBuilder: (context, index) {
                    final toDo = toDoList.toDoList[index];
                    return GestureDetector(
                      onTap: () {
                        Get.to(
                          () => detail(
                            judul: toDo.judul,
                            notif: toDo.notif,
                            catatan: toDo.catatan,
                            langkah: toDo.langkah,
                            waktu: toDo.waktu,
                          ),
                        );
                      },
                      child: kolom(
                          fullWidth: fullWidth,
                          judul: toDo.judul,
                          waktu: toDo.waktu),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container kolom({
    required double fullWidth,
    judul = "",
    waktu = "",
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 104, 177, 143),
        borderRadius: BorderRadius.circular(20),
      ),
      width: fullWidth,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 64,
            height: 64,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style: TextStyle(fontSize: 30),
              ),
              Text(
                waktu,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
