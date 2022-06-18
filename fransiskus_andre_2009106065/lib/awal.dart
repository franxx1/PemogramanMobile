import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fransiskus_andre_2009106065/splashcontroller.dart';

class splash extends StatelessWidget {
  SplashController kontrol = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 77, 145, 113),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/icon.png",
                width: MediaQuery.of(context).size.width / 2.8,
                height: MediaQuery.of(context).size.width / 2.8,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(20),
              child: Text(
                "DO YOUR LIST",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
