import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106065_fransiskusandre/berandapage.dart';
import 'package:posttest6_2009106065_fransiskusandre/form.dart';
import 'package:posttest6_2009106065_fransiskusandre/mainpagecontroller.dart';

class MainPage extends StatelessWidget {
  MainPageController mainPageController = Get.put(MainPageController());

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: mainPageController.pindah.value,
            children: [
              BerandaPage(),
              InputPage(),
            ],
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: mainPageController.pindah.value,
          onTap: mainPageController.gantiPindah,
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
      ),
    );
  }
}
