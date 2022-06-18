import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fransiskus_andre_2009106065/detail.dart';
import 'package:fransiskus_andre_2009106065/todo.dart';

class BerandaPage extends StatelessWidget {
  ToDoList toDoList = Get.put(ToDoList());

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference todo = firestore.collection('todo');
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
              child: StreamBuilder<QuerySnapshot>(
                stream: todo.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView(
                      children: snapshot.data!.docs
                          .map(
                            (e) => InkWell(
                              onTap: () {
                                Get.to(
                                  () => detail(
                                    doc: e.id,
                                  ),
                                );
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 104, 177, 143),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: fullWidth,
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
                                        child: InkWell(
                                          onTap: () {
                                            Get.defaultDialog(
                                              title: "Peringatan",
                                              middleText:
                                                  "Anda yakin sudah selesai?",
                                              textConfirm: "Yakin",
                                              textCancel: "Batal",
                                              onConfirm: () {
                                                FirebaseFirestore.instance
                                                    .collection("todo")
                                                    .doc(e.id)
                                                    .delete();
                                                Get.back();
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e.get("judul"),
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          Text(
                                            e.get("waktu"),
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    );
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
