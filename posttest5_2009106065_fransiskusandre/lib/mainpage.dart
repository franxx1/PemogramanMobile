import 'package:flutter/material.dart';
import 'package:posttest5_2009106065_fransiskusandre/berandapage.dart';
import 'package:posttest5_2009106065_fransiskusandre/form.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pindah = 0;

  static final List<Widget> halaman = [
    BerandaPage(),
    InputPage()
  ];
  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: halaman.elementAt(pindah),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pindah,
        onTap: (int index){
          setState(() {
            pindah = index;
          });
        },
        selectedItemColor: Color.fromARGB(255, 34, 129, 129),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Tambah",
          ),
        ],
      ),
    );
  }
}
