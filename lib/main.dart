import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Hello World",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMercury = true;
  bool isVenus = false;
  bool isEarth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("პლანეტები"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isMercury
                      ? 'მერკური'
                      : isVenus
                          ? 'ვენერა'
                          : isEarth
                              ? 'დედამიწა'
                              : '',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80,
                ),
                Image.network(isMercury
                    ? 'https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1920,f_auto/AW_Mercury_ladprw.jpg'
                    : ''),
                Image.network(isVenus
                    ? 'https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-c4d-realistic-simulation-planet-venus-image_1169356.jpg'
                    : ''),
                Image.network(isEarth
                    ? 'https://pngimg.com/uploads/earth/earth_PNG39.png'
                    : ''),
                SizedBox(
                  height: 30,
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isMercury = true;
                          isVenus = false;
                          isEarth = false;
                        });
                      },
                      child: Text("მერკური"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isMercury = false;
                          isVenus = true;
                          isEarth = false;
                        });
                      },
                      child: Text("ვენერა"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isMercury = false;
                          isVenus = false;
                          isEarth = true;
                        });
                      },
                      child: Text("დედამიწა"),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
