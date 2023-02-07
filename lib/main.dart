// import 'package:crop_disease_detection/controller/authentication_repository.dart';
// import 'package:crop_disease_detection/firebase_options.dart';
// import 'package:crop_disease_detection/screens/HomePages/home_screen.dart';
// import 'package:crop_disease_detection/screens/lang_screen.dart';
// import 'package:crop_disease_detection/screens/slide_screen.dart';
import 'package:crop_disease_detection/controller/language_controller.dart';
import 'package:crop_disease_detection/screens/splash_screen.dart';
import 'package:crop_disease_detection/utils/app_constants.dart';
import 'package:crop_disease_detection/utils/messages.dart';
// import 'package:crop_disease_detection/utils/routes.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/dep.dart' as dep;

int? isViewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Map<String, Map<String, String>> _languages = await dep.init();
  // Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  //     .then((value) => Get.put(AuthenticationRepository()));
  runApp(MyApp(languages: _languages,));
}

class MyApp extends StatelessWidget {
  MyApp({required this.languages});
  final Map<String, Map<String, String>> languages;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        locale: localizationController.locale,
        translations: Messages(languages: languages),
        fallbackLocale: Locale(AppConstants.languages[0].languageCode,
            AppConstants.languages[0].countryCode),
        home: const SplashScreen(),
      );
    });
  }
}
