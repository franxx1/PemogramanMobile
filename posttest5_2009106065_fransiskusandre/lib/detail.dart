import 'package:flutter/material.dart';

class detail extends StatefulWidget {
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

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {

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
    
  TextEditingController judulController = TextEditingController(text: widget.judul);
  TextEditingController notifController = TextEditingController(text: widget.notif);
  TextEditingController langkahController = TextEditingController(text: widget.langkah);
  TextEditingController waktuController = TextEditingController(text: widget.waktu);
  TextEditingController catatanController = TextEditingController(text: widget.catatan);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 104, 177, 143) ,
        title: Text(widget.judul),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          jarak(),
                  masukan(
                    controller_: judulController,
                    text: "Nama Kegiatan",
                  ),
                  jarak(),
                  masukan(
                    controller_: waktuController,
                    text: "Waktu",
                  ),
                  jarak(),
                  masukan(
                    controller_: langkahController,
                    text: "langkah",
                  ),
                  jarak(),
                  masukan(
                    controller_: notifController,
                   text: "notif",
                  ),
                  jarak(),
                  masukan(
                    controller_: catatanController,
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
