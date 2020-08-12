import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Color> colors = [
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.cyan,
    Colors.orange,
    Colors.brown,
    Colors.deepPurple,
    Colors.grey,
    Colors.indigo,
    Colors.lime,
    Colors.pink,
    Colors.tealAccent,
  ];
  Color currentColor = Colors.white;

  _changeColor(){
    int rndm = Random().nextInt(colors.length);
    debugPrint("Generated Number is : $rndm");

    setState(() {
      currentColor = colors[rndm];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BG Changer",
        style: TextStyle(
          fontSize: 29.9,
          fontWeight: FontWeight.bold,
          color: Colors.tealAccent,
        ),),
      ),
      body: Container(
        color: currentColor,
        child: Center(
          child: RaisedButton(
            onPressed: _changeColor,
            splashColor: Colors.black87,
            color: colors[Random().nextInt(colors.length)],
            elevation: 10.0,
            child: Text(
              "Change it !",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
