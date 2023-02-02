import 'package:crop_disease_detection/widgets/forget_password_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/Forget Password/forget_password_mail.dart';
import '../screens/Forget Password/forget_password_phone.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "E-Mail",
                hintText: "E-Mail",
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye_sharp),
                  onPressed: null,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    builder: (context) => Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                              Text("Make Selection!",
                                  style: GoogleFonts.raleway(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Select on of the options given below to reset your password.",
                                style: GoogleFonts.raleway(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ForgetPasswordBtnWidget(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ForgetPassowordMailScreen()));
                                },
                                title: "E-Mail",
                                subTitle: "Reset via Mail Verification",
                                btnIcon: Icons.mail_outline_rounded,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ForgetPasswordBtnWidget(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ForgetPassowordPhoneScreen()));
                                },
                                title: "Phone No",
                                subTitle: "Reset via Phone Verification",
                                btnIcon: Icons.mobile_friendly_rounded,
                              ),
                            ],
                          ),
                        ));
              },
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 16, 160, 0))),
              child: Text("Forget Password?", style: GoogleFonts.raleway(fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 16, 160, 0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: Text(
                "LOGIN",
                style: GoogleFonts.raleway(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ));
  }
}


