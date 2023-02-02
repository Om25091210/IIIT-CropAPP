// import 'package:crop_disease_detection/controller/profile_controller.dart';
// import 'package:crop_disease_detection/model/user_model.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProfileController());
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text(
              "Edit Profile",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              // child: FutureBuilder(
              //   future: controller.getUserData(),
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState == ConnectionState.done) {
              //       if (snapshot.hasData) {
              //         // UserModel userData = snapshot.data as UserModel;
              //         return 
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                height: 150,
                                width: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Container(
                                      color: const Color.fromARGB(
                                          255, 231, 231, 231),
                                      child: Image.asset(
                                          "assets/images/profile.png")),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 5,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: const Color.fromARGB(
                                            255, 16, 160, 0)),
                                    child: const Icon(
                                      Icons.photo_camera_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  // initialValue: userData.fullName,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                        Icons.person_outline_outlined),
                                    labelText: "Full Name",
                                    hintText: "Full Name",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  // initialValue: userData.email,
                                  decoration: InputDecoration(
                                      prefixIcon:
                                          const Icon(Icons.email_outlined),
                                      labelText: "E-Mail",
                                      hintText: "E-Mail",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(100))),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  // initialValue: userData.phoneNo,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.call),
                                      labelText: "Phone Number",
                                      hintText: "Phone No",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(100))),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  // initialValue: userData.password,
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.fingerprint),
                                      labelText: "Password",
                                      hintText: "Password",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      suffixIcon: const IconButton(
                                        icon: Icon(Icons.remove_red_eye_sharp),
                                        onPressed: null,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 16, 160, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              child: Text(
                                "Edit Profile",
                                style: GoogleFonts.raleway(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      )
                      // ;
              //       } else if (snapshot.hasError) {
              //         return Center(child: Text(snapshot.hasError.toString()));
              //       } else {
              //         return const Center(child: Text("Something went wrong."));
              //       }
              //     } else {
              //       return const Align(
              //         alignment: Alignment.center,
              //         child: CircularProgressIndicator(),
              //       );
              //     }
              //   },
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
