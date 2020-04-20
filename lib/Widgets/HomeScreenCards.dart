import 'package:flutter/material.dart';
import 'package:kwizzo/constants/Constants.dart';

class HomeScreenCard extends StatelessWidget {
  Gradient gradient;
  String title;

  HomeScreenCard({this.gradient, this.title});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black54,
              offset: Offset(5, 5),
              blurRadius: 10.0,
              spreadRadius: 2)
        ],
        gradient: gradient,
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: h * 0.2,
      width: w * 0.95,
      margin: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$title',
              style: kcardtextstyle,
            ),
          ],
        ),
      ),
    );
  }
}
