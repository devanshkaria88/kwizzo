import 'package:flutter/material.dart';

BoxShadow knormalshadow = BoxShadow(
    color: Colors.black54,
    offset: Offset(5, 5),
    spreadRadius: 2,
    blurRadius: 10);

TextStyle kcardtextstyle =
    TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold);

Gradient klinearblue = LinearGradient(
  colors: [
    Colors.indigo[900].withOpacity(0.5),
    Colors.indigo[800].withOpacity(0.5),
    Colors.indigo[700].withOpacity(0.5),
    Colors.blue[900].withOpacity(0.5),
    Colors.blue[800].withOpacity(0.5),
    Colors.blue[700].withOpacity(0.5),
  ],
);

Gradient klineargreen = LinearGradient(
  colors: [
    Colors.green[900].withOpacity(0.5),
    Colors.green[800].withOpacity(0.5),
    Colors.green[700].withOpacity(0.5),
    Colors.lightGreen[900].withOpacity(0.5),
    Colors.lightGreen[800].withOpacity(0.5),
    Colors.lightGreen[700].withOpacity(0.5),
  ],
);

Gradient klinearorange = LinearGradient(
  colors: [
    Colors.deepOrange[900].withOpacity(0.5),
    Colors.deepOrange[800].withOpacity(0.5),
    Colors.deepOrange[700].withOpacity(0.5),
    Colors.orange[900].withOpacity(0.5),
    Colors.orange[800].withOpacity(0.5),
    Colors.orange[700].withOpacity(0.5),
  ],
);

Gradient klinearred = LinearGradient(
  colors: [
    Colors.brown[900],
    Colors.brown[800],
    Colors.brown[700],
    Colors.red[900],
    Colors.red[800],
    Colors.red[700]
  ],
);

Gradient klinearpurple = LinearGradient(
  begin: AlignmentDirectional.centerStart,
  end: AlignmentDirectional.centerEnd,
  colors: [
    Color(0xff7500a6),
    Color(0xff850091),
    Color(0xff950085),
    Color(0xffa50071),
    Color(0xffb50056),
  ],
);
