// import 'package:crop_disease_detection/controller/authentication_repository.dart';
// import 'package:crop_disease_detection/firebase_options.dart';
// import 'package:crop_disease_detection/screens/HomePages/home_screen.dart';
// import 'package:crop_disease_detection/screens/lang_screen.dart';
// import 'package:crop_disease_detection/screens/slide_screen.dart';
import 'package:crop_disease_detection/screens/splash_screen.dart';
// import 'package:crop_disease_detection/utils/routes.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int? isViewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  //     .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
