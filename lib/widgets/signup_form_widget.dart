// import 'package:crop_disease_detection/controller/signup_controller.dart';
// import 'package:crop_disease_detection/model/user_model.dart';
// import 'package:crop_disease_detection/screens/Forget%20Password/otp_screen_phone.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                // controller: controller.fullName,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: "Full Name",
                    hintText: "Full Name",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: controller.email,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "E-Mail",
                    hintText: "E-Mail",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: controller.phoneNo,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.numbers_outlined),
                    labelText: "Phone Number",
                    hintText: "Phone No",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                // controller: controller.password,
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
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   // SignUpController.instance.registerUser(
                    //   //     controller.email.text.trim(),
                    //   //     controller.password.text.trim());
                    //   // SignUpController.instance
                    //   //     .phoneAuthentication(controller.phoneNo.text.trim());
                    //   // Get.to(() => const OTPScreenPhone());
                    //   final user = UserModel(
                    //       email: controller.email.text.trim(),
                    //       password: controller.password.text.trim(),
                    //       fullName: controller.fullName.text.trim(),
                    //       phoneNo: controller.phoneNo.text.trim());
                    //   SignUpController.instance
                    //       .createUser(user);
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 16, 160, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text(
                    "SIGNUP",
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
