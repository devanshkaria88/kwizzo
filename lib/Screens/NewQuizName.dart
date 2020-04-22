import 'package:flutter/material.dart';
import 'package:kwizzo/constants/Constants.dart';

class NewQuizName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Container(
          height: h * 0.4,
          width: w * 0.85,
          decoration: BoxDecoration(
            boxShadow: [knormalshadow],
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white70,
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter the Quiz Name',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 25.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
