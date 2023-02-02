// import 'package:crop_disease_detection/controller/authentication_repository.dart';
import 'package:crop_disease_detection/screens/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/profile_menu_widget.dart';

class ThirdHomePage extends StatefulWidget {
  const ThirdHomePage({Key? key}) : super(key: key);

  @override
  State<ThirdHomePage> createState() => _ThirdHomePageState();
}

class _ThirdHomePageState extends State<ThirdHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: const Drawer(),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text(
              "Profile",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
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
                              color: const Color.fromARGB(255, 231, 231, 231),
                              child: Image.asset("assets/images/profile.png")),
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
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(255, 16, 160, 0)),
                            child: const Icon(
                              Icons.create,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Prashant Bhattacharya",
                    style: GoogleFonts.raleway(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "iprashantbhattacharya@gmail.com",
                    style: GoogleFonts.raleway(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const EditProfileScreen()),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 16, 160, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        "Edit Profile",
                        style: GoogleFonts.raleway(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProfileMenuWidget(
                    title: "Settings",
                    icon: Icons.settings,
                    onPress: () {},
                  ),
                  ProfileMenuWidget(
                    title: "User Management",
                    icon: Icons.manage_accounts,
                    onPress: () {},
                  ),
                  const Divider(),
                  ProfileMenuWidget(
                    title: "Information",
                    icon: Icons.info_outline,
                    onPress: () {},
                  ),
                  ProfileMenuWidget(
                    title: "Logout",
                    icon: Icons.logout_outlined,
                    onPress: () {
                      // AuthenticationRepository.instance.logout();
                    },
                    endIcon: false,
                    textColor: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
