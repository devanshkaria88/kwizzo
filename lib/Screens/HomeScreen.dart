import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kwizzo/Widgets/HomeScreenCards.dart';
import 'package:kwizzo/constants/Constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeScreenCard(
                  gradient: klinearblue,
                  title: 'Create Quiz',
                ),
                HomeScreenCard(
                  gradient: klinearorange,
                  title: 'Join a Quiz',
                ),
                HomeScreenCard(
                  gradient: klineargreen,
                  title: 'Settings',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
