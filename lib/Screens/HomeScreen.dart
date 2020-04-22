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
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/1.gif'), fit: BoxFit.fill),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'Newquizname');
                  },
                  child: HomeScreenCard(
                    gradient: klinearblue,
                    title: 'Create Quiz',
                  ),
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
