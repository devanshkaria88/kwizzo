import 'package:flutter/material.dart';
import 'package:kwizzo/constants/Constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/twinklingstars.gif'),
                    fit: BoxFit.fill)),
            height: h,
            width: w,
          ),
          Positioned(
            top: 80,
            left: w - 132,
            child: SizedBox(
              height: 225,
              width: 225,
              child: Transform.rotate(
                angle: 45,
                child: Image(
                  image: AssetImage('assets/planetred.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: h * 0.15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: h * 0.6,
                  width: w - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white70.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, 'home');
                  },
                  child: Container(
                    height: 50.0,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: klinearpurple),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 3.0,
                    color: Color(0xffb50056),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
