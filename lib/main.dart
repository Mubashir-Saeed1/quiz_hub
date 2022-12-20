import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizhub/screens/welcome_screen.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      Get.offAll(() => WelcomeScreen(), duration: Duration(seconds: 2));
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
              child: Hero(
                tag: 'logoHero',
                transitionOnUserGestures: true,
                child: Image.asset(
                  "assets/logo1.png",
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            )));
  }
}
