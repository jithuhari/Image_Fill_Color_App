import 'package:flutter/material.dart';
import 'package:floodfill_image/floodfill_image.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  final String? title;
  MyHomePage({Key? key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _fillColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/Sky.png'),
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.height * .8,
                        child: FloodFillImage(
                          imageProvider: AssetImage("assets/bird.png"),
                          fillColor: _fillColor,
                          avoidColor: [Colors.transparent, Colors.black],
                          tolerance: 10,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.brown;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.brown)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.amber;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.amber)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.cyan;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.cyan)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.red;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.green;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.brown;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.brown)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.amber;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.amber)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.cyan;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.cyan)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.red;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red)),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _fillColor = Colors.green;
                              });
                            },
                            child: Text(
                              "",
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      //flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage(
                                      'assets/images/newicons/ToffeeShot_150.png')),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _fillColor = Colors.white;
                                      });
                                    },
                                    child: Image(
                                        width: 50,
                                        height: 50,
                                        image: AssetImage(
                                            'assets/images/newicons/Eraser_150.png')),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                      width: 50,
                                      height: 50,
                                      image: AssetImage(
                                          'assets/images/newicons/Download_150.png')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                      width: 50,
                                      height: 50,
                                      image: AssetImage(
                                          'assets/images/newicons/Done_150.png')),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
