import 'package:get/get.dart';

class ToDo {
  String judul;
  String langkah;
  String notif;
  String catatan;
  String waktu;

  ToDo(
    {
      required this.judul,
      this.langkah = "",
      this.notif = "",
      this.catatan = "",
      required this.waktu
    }
  );
}

class ToDoList extends GetxController {
  var toDoList = [
    ToDo(judul: "Rapat Hima", waktu: "18.00"),
    ToDo(judul: "Rapat AI", waktu: "23.00"),
    ToDo(judul: "Rapat Komas", waktu: "02.00"),
    ToDo(judul: "Rapat Kating", waktu: "04.00"),
    ToDo(judul: "Kerja Kelompok", waktu: "08.59"),
  ].obs;
}