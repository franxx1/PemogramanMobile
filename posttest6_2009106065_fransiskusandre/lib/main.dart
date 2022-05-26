import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_2009106065_fransiskusandre/awal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}