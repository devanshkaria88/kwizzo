import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kwizzo/Screens/NewQuestion.dart';
import 'package:kwizzo/constants/Constants.dart';

class NewQuizName extends StatelessWidget {
  String quizName;
  String quizAttempts;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/twinklingstars.gif'), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Positioned(
              top: h * 0.08,
              left: w * 0.03,
              child: Transform.rotate(
                angle: 30,
                child: Image(
                  width: h * 0.4,
                  height: h * 0.4,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/galaxy.png'),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Positioned(
              top: h * 0.2,
              left: w * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.black),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    fontSize: 25.0, color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Enter the Quiz Name',
                              ),
                              onChanged: (value) {
                                quizName = value.toString();
                              },
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Max. No. of Attempts :',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            DropdownButtonFormField(
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    '1',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  value: '1',
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    '2',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  value: '2',
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    'Infinite',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  value: 'Infinite',
                                ),
                              ],
                              onChanged: (value) {
                                quizAttempts = value;
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    height: h * 0.4,
                    width: w * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NewQuestion(Quizname: quizName);
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[900],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      width: 150,
                      height: 50,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Create Quiz',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
