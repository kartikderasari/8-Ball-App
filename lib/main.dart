import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Center(
              child: Text('Ask Me Anything'),
            ),
            backgroundColor: Colors.blue[700],
          ),
          body: HomePage(),
        ),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int imageCount = 2;

  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  imageCount = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$imageCount.png'),
            ),
          ),
        ),
      ],
    );
  }
}
