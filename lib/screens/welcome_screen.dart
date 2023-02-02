import 'package:crop_disease_detection/screens/HomePages/home_screen.dart';
import 'package:crop_disease_detection/screens/login_screen.dart';
import 'package:crop_disease_detection/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
              alignment: Alignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/welcome_image.png"),
                ),
                Positioned(
                  bottom: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                        },
                        style: OutlinedButton.styleFrom(
                          primary: const Color.fromARGB(255, 16, 160, 0),
                          fixedSize: const Size(100, 50),
                          side: const BorderSide(color: Color.fromARGB(255, 16, 160, 0), width: 2)
                        ),  
                        child: Text("Login", style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.bold))
                      ),
                      const SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 16, 160, 0),
                          fixedSize: const Size(100, 50)
                        ), 
                        child: Text("SignUp", style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                    },
                    child: Text("Skip", style: GoogleFonts.raleway(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}