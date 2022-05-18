import 'package:flutter/material.dart';
import 'package:posttest5_2009106065_fransiskusandre/awal.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),
      
    );
  }
}