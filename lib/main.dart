import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Planets",
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
    // final deviceOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("პლანეტები"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portraitMode(); // armushaobs? d erorebia
          } else {
            return landscapeMode();
          }
        },
      ),
    );
  }

  Widget portraitMode() {
    var vw = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
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
              Image.network(
                isMercury
                    ? 'https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1920,f_auto/AW_Mercury_ladprw.jpg'
                    : isVenus
                        ? 'https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-c4d-realistic-simulation-planet-venus-image_1169356.jpg'
                        : isEarth
                            ? 'https://pngimg.com/uploads/earth/earth_PNG39.png'
                            : '',
                width: vw,
              ),
              SizedBox(
                height: vw / 40,
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }

  Widget landscapeMode() {
    var vw = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Center(
        child: Container(
          child: Row(
            children: [
              Container(
                width: vw / 2,
                child: Column(children: <Widget>[
                  Image.network(
                    isMercury
                        ? 'https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1920,f_auto/AW_Mercury_ladprw.jpg'
                        : isVenus
                            ? 'https://png.pngtree.com/element_our/20190528/ourlarge/pngtree-c4d-realistic-simulation-planet-venus-image_1169356.jpg'
                            : isEarth
                                ? 'https://pngimg.com/uploads/earth/earth_PNG39.png'
                                : '',
                    width: vw * 0.3,
                  ),
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
                ]),
              ),
              Container(
                  width: vw / 2,
                  child: Column(
                    children: <Widget>[
                      ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                              width: vw / 2.5, height: vw / 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isMercury = true;
                                isVenus = false;
                                isEarth = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(1, 1)),
                            child: Text(
                              "მერკური",
                              style: TextStyle(
                                  fontSize: vw * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      SizedBox(
                        height: vw / 40,
                      ),
                      ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                              width: vw / 2.5, height: vw / 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isMercury = false;
                                isVenus = true;
                                isEarth = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(1, 1)),
                            child: Text(
                              "ვენერა",
                              style: TextStyle(
                                  fontSize: vw * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      SizedBox(
                        height: vw / 40,
                      ),
                      ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                              width: vw / 2.5, height: vw / 15),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                isMercury = false;
                                isVenus = false;
                                isEarth = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(1, 1)),
                            child: Text(
                              "დედამიწა",
                              style: TextStyle(
                                  fontSize: vw * 0.03,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
