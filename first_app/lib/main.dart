import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: SafeArea(
          //OR Center
          child: Container(
              child: Image.asset("images/image1.jpg"),
              height: 200,
              width: 200,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 10),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Colors.orange,
                    Colors.yellow,
                    Colors.lime
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        spreadRadius: 5)
                  ])),
        ),
      ),
    ),
  );
}
