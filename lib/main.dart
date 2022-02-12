import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String menuClick = "";

  void _showToast(String title) {
    Fluttertoast.showToast(
        msg: "Halaman " + title + " belum tersedia",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffDFDFDF),
        body: Stack(
          children: [
            Container(
              color: Color(0xFF408A43),
              height: 184,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      top: 60,
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Moch Diki Widianto',
                          style: studentNameTextStyle,
                        ),
                        Text(
                          '133341043 - Akuntansi',
                          style: studentSubNameTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 20,
                      right: 10,
                    ),
                    height: 132,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                mainMenuBar('Profil', 'assets/user.png'),
                                mainMenuBar('KRS', 'assets/book.png'),
                                mainMenuBar('Berita', 'assets/news_letter.png'),
                                mainMenuBar('Nilai', 'assets/evaluation.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  newsCard(),
                  newsCard(),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container newsCard() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 20,
        right: 10,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/gambar.png',
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Auditorium',
                  style: newsTitleTextStyle,
                ),
                Text(
                  'Auditorium adalah tempat untuk melakukan pertemuan bersama dengan para ...',
                  style: newsContentTextStyle,
                ),
              ],
            )),
      ),
    );
  }

  Flexible mainMenuBar(String title, String location) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            menuClick = title;
            _showToast(title);
          });
        },
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                location,
                width: 45,
                height: 52,
              ),
              Text(
                title,
                style: mainMenuBarTextStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
