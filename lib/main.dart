import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizhub/screens/welcome_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(QuizHub());
}

class QuizHub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        key: Key('sizer'),
        builder: (context, Orientation, DeviceType) {
          return GetMaterialApp(
            title: 'QuizHub',
            home: SplashScreen(),
          );
        });
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      Get.offAll(() => WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: devSize.width,
            height: devSize.height,
            color: Colors.black,
            child: Center(
              child: Image.asset(
                "assets/logo1.png",
                width: MediaQuery.of(context).size.width,
                height: 400,
                fit: BoxFit.cover,
              ),
            )));
  }
}
