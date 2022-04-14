import 'package:flutter/material.dart';

class myc extends StatelessWidget {
  const myc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;
    var fullHeight = MediaQuery.of(context).size.height;
    PageController _controller = PageController(initialPage: 0);

    return Scaffold(
      body: SizedBox(
        width: fullWidth,
        height: fullHeight,
        child: PageView(
          controller: _controller,
          children: [
            Container(
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
                      style: TextStyle(fontSize: 18,color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                      width: fullWidth,
                      margin: EdgeInsets.all(20),
                      child: Text(
                        "swipe ke kiri <---",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              width: fullWidth,
              height: fullWidth,
              margin: EdgeInsets.all(25),
              child: SafeArea(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: fullWidth,
                          child: Text(
                            "Hai\nFransiskus Andre",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Today Task",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          width: fullWidth,
                          height: fullHeight / 2,
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 104, 177, 143),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: fullWidth,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          width: 64,
                                          height: 64,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rapat Hima",
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            Text(
                                              "16.00",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 104, 177, 143),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: fullWidth,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          width: 64,
                                          height: 64,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rapat Hima",
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            Text(
                                              "16.00",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 104, 177, 143),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: fullWidth,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          width: 64,
                                          height: 64,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rapat Hima",
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            Text(
                                              "16.00",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 104, 177, 143),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: fullWidth,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          width: 64,
                                          height: 64,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rapat Hima",
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            Text(
                                              "16.00",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 104, 177, 143),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    width: fullWidth,
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    padding: EdgeInsets.all(12),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          width: 64,
                                          height: 64,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rapat Hima",
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            Text(
                                              "16.00",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: fullWidth,
                      height: fullHeight,
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 72,
                        height: 72,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 104, 177, 143),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
