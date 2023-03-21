import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crop_disease_detection/controller/authentication_repository.dart';
import 'package:crop_disease_detection/screens/edit_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../widgets/profile_menu_widget.dart';

class ThirdHomePage extends StatefulWidget {
  const ThirdHomePage({Key? key}) : super(key: key);

  @override
  State<ThirdHomePage> createState() => _ThirdHomePageState();
}

class _ThirdHomePageState extends State<ThirdHomePage> {
  String name = '';
  String email = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  Future<void> getUserData() async {
    String? uid = FirebaseAuth.instance.currentUser?.uid;
    final CollectionReference usersCollection = FirebaseFirestore.instance.collection('users');
    final DocumentReference userDocument = usersCollection.doc(uid);
    DocumentSnapshot userSnapshot = await userDocument.get();
    if (userSnapshot.exists) {
      Map<String, dynamic> userData = userSnapshot.data() as Map<String, dynamic>;
      name = userData['name'];
      email = userData['email'];
      password = userData['password'];
      print('Name: $name, Email: $email, Password: $password');
      setState(() {
        name = userData['name'];
        email = userData['email'];
      });
    } else {
      print('User data not found');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              title: Text(
                'profile'.tr,
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 25),
              ),
              centerTitle: true,
              automaticallyImplyLeading: false),
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
                    name,
                    style: GoogleFonts.raleway(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    email,
                    style: GoogleFonts.raleway(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 240,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const EditProfileScreen()),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 16, 160, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: Text(
                        'edit_profile'.tr,
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
                    title: 'settings'.tr,
                    icon: Icons.settings,
                    onPress: () {
                      openAppSettings();
                    },
                  ),
                  ProfileMenuWidget(
                    title: 'user_management'.tr,
                    icon: Icons.manage_accounts,
                    onPress: () {},
                  ),
                  const Divider(),
                  ProfileMenuWidget(
                      title: 'about_app'.tr,
                      icon: Icons.info_outline,
                      onPress: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Center(
                                  child: Text(
                                    'about_app'.tr,
                                    style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold, fontSize: 25
                                    ),
                                  )
                                ),
                                content: Text(
                                  'app_desc'.tr,
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500, fontSize: 16
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                actions: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromARGB(255, 16, 160, 0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)),
                                      fixedSize: const Size(100, 30)),
                                    child: Text(
                                      'close'.tr, 
                                      style: GoogleFonts.raleway(
                                        fontSize: 15, fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      }),
                  ProfileMenuWidget(
                    title: 'logout'.tr,
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
