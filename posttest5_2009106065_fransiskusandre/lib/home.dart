import 'package:flutter/material.dart';
import 'package:posttest5_2009106065_fransiskusandre/mainpage.dart';

class myc extends StatefulWidget {
  const myc({Key? key}) : super(key: key);

  @override
  State<myc> createState() => _mycState();
}

class _mycState extends State<myc> {
  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 116, 175, 175),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: fullWidth,
              height: fullWidth,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/korporat.png"))),
            ),
            Container(
              width: fullWidth,
              margin: EdgeInsets.all(20),
              child: Text(
                "DO YOUR LIST",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: fullWidth,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Banyaknya pekerjaan yang di lakukan membuat kita lupa \nswipe kiri untuk masuk ke dunia anti lupa",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: fullWidth / 2,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 185, 161, 50),
                ),
                child: const Text("Tekan Untuk lanjut"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const MainPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
