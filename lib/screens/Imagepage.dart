import 'package:flutter/material.dart';
import 'package:floodfill_image/floodfill_image.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: FloodFillImage(
                  imageProvider: AssetImage("assets/fish.jpg"),
                  fillColor: _fillColor,
                  avoidColor: [Colors.transparent, Colors.black],
                  tolerance: 10,
                ),
              ),
              Row(
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
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
