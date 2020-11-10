import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(body: View()));
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  Color colorCode = Colors.white;
  final Random random = Random();
  generateRandomColor() {
    Color randomColorCode = Color(Random().nextInt(0xffffffff)).withAlpha(0xff);

    setState(() {
      colorCode = randomColorCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          generateRandomColor();
        },
        child: Scaffold(
            backgroundColor: colorCode,
            body: Center(
              child: Text(
                'Hey there',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                ),
              ),
            )));
  }
}
