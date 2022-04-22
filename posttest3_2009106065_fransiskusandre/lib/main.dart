import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String kegiatan = "", waktu = "";
  TextEditingController kegiatanController = TextEditingController();
  TextEditingController waktuController = TextEditingController();

  bool isSelesai = false;

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
  void dispose() {
    kegiatanController.dispose();
    waktuController.dispose();
    super.dispose();
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
                    controller_: kegiatanController,
                    text: "Nama Kegiatan",
                  ),
                  jarak(),
                  masukan(
                    controller_: waktuController,
                    text: "Waktu",
                  ),
                  jarak(),
                  ListTile(
                    onTap: () {
                      setState(() {
                        isSelesai = !isSelesai;
                      });
                    },
                    title: Text(
                      "Selesai",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    leading: Checkbox(
                      value: isSelesai,
                      onChanged: (value) {
                        setState(() {
                          isSelesai = value ?? false;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: fullWidth,
                    height: 64,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          kegiatan = kegiatanController.text;
                          waktu = waktuController.text;
                        });
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
                      borderRadius : BorderRadius.circular(5),
                          
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        gayatext("Nama Kegiatan : $kegiatan"),
                        gayatext("Waktu : $waktu"),
                        gayatext("Status :${isSelesai ? 'Selesai' : 'Belum Selesai'}"),
                      ],
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
