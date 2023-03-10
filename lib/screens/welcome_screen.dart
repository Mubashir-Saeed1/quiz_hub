import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizhub/screens/login_screen.dart';
import 'package:quizhub/screens/signup_screen.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: devSize.width,
      height: devSize.height,
      // padding:
      //     const EdgeInsets.only(top: 60.0, bottom: 100, left: 16, right: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.red],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
              Text(
                ' QuizHub',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.green.shade400,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Hero(
            transitionOnUserGestures: true,
            tag: 'logoHero',
            child: Image.asset('assets/logo1.png')),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => SigninScreen(),
                  duration: Duration(milliseconds: 500),
                  transition: Transition.rightToLeft);
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.green),
              child: Center(
                  child: Text('Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500))),
            ),
          ),
          SizedBox(height: 24.0),
          GestureDetector(
            onTap: () {
              Get.to(() => SignupScreen(),
                  duration: Duration(milliseconds: 500),
                  transition: Transition.rightToLeft);
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white),
              child: Center(
                  child: Text('Sign Up',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.w500))),
            ),
          ),
          Spacer()
        ],
      ),
    ));
  }
}
