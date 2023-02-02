import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                "assets/images/logo.png",
                height: size.height * 0.2,
              )),
              Center(
                child: Text(
                  "Get On Board!",
                  style: GoogleFonts.raleway( 
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5,),
              Center(
                child: Text(
                  "Create your profile to start your Journey.",
                  style: GoogleFonts.raleway( 
                      fontSize: 15),
                ),
              ),
              const SignUpForm(),
              Column(
                children: [
                  const Text("OR"),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      icon: Image.asset("assets/icons/google-logo.png", width: 20,),
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(100, 50),
                          side: const BorderSide(color: Color.fromARGB(255, 16, 160, 0), width: 2)
                      ), 
                      onPressed: () {}, 
                      label: const Text("Sign-In with Google", style: TextStyle(color: Colors.black),)
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account?",
                        style: GoogleFonts.raleway(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      TextButton(
                        onPressed: () {}, 
                        child: Text.rich(
                          TextSpan(
                            text: " LOGIN",
                            style: GoogleFonts.raleway(
                              color: const Color.fromARGB(255, 16, 160, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            )
                          )
                        )
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )),
        ),
      ),
    );
  }
}