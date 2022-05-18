import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:posttest5_2009106065_fransiskusandre/home.dart';
import 'package:posttest5_2009106065_fransiskusandre/mainpage.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    splashStart();
  }

  splashStart() {
    var durasi = const Duration(seconds: 5);
    return Timer(durasi, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => myc()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 77, 145, 113),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Center(
              child: Image.asset("assets/icon.png"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(20),
              child: Text(
                "DO YOUR LIST",
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
