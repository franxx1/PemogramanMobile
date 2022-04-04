import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),

    );
  }
  }

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
        title: const Text("POSSTEST 1 ANDRE"),

      ),
      body: Container(
        padding: const EdgeInsets.all(1),
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 241, 59, 172),
              Color.fromARGB(255, 117, 21, 146),
              Color.fromARGB(255, 29, 2, 73),
            ]
          ),
          
        ),
        child:Container(
          width: lebar/1.2,
          height:tinggi/10,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 148, 109, 180),
            border: Border.all(
              color: Color.fromARGB(255, 211, 211, 211),
              width: 6,

            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Text("FRANSISKUS ANDRE",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        ),

        
      ),
      );
  }
}