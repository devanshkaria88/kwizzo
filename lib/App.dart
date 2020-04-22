import 'package:flutter/material.dart';
import 'package:kwizzo/Screens/HomeScreen.dart';
import 'package:kwizzo/Screens/LginScreen.dart';
import 'package:kwizzo/Screens/NewQuizName.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginScreen(),
        'home': (context) => HomeScreen(),
        'Newquizname': (context) => NewQuizName(),
      },
    );
  }
}
