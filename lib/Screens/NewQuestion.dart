import 'dart:math';

import 'package:flutter/material.dart';

class NewQuestion extends StatelessWidget {
  String Quizname;

  NewQuestion({@required this.Quizname});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          '$Quizname',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            left: w * 0.45,
            child: SizedBox(
              height: h * 0.5,
              width: h * 0.5,
              child: Transform.rotate(
                angle: pi / 8,
                child: Image(
                  image: AssetImage('assets/planet1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: h * 0.07,
            left: w * 0.1,
            child: Container(
              height: h * 0.6,
              width: w * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.blue, width: 5.0)),
            ),
          )
        ],
      ),
    );
  }
}
