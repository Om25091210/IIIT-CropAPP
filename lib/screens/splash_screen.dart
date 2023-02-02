import 'dart:async';
import 'package:crop_disease_detection/screens/lang_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LangScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 138, 255, 142),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 185, 250, 187),
                  Colors.white
                ],
                begin: Alignment.topCenter,
                end: Alignment.center
              )
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    child: Image.asset("assets/images/splash.png"),
                  ),
                ),
                Positioned(
                  bottom: 100,
                  left: 90,
                  child: Image.asset(
                    "assets/images/IIIT_logo.png",
                    height: 100,
                  ),
                ),
                Positioned(
                  bottom: 80,
                  right: 70,
                  child: Image.asset(
                    "assets/images/meity.png",
                    height: 150,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

              