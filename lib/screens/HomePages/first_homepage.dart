import 'package:crop_disease_detection/controller/global_controller.dart';
import 'package:crop_disease_detection/screens/Paddy%20Crop/paddy_crop_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/weather_tab_home.dart';

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({Key? key}) : super(key: key);

  @override
  State<FirstHomePage> createState() => _FirstHomePageState();
}

class CropImage {
  final String image;
  final String title;

  CropImage({
    required this.image,
    required this.title,
  });
}

RxInt cardIndex = GlobalController().getIndex();

class _FirstHomePageState extends State<FirstHomePage> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  List<CropImage> items = [
    CropImage(
      image: 'assets/images/paddy.png',
      title: 'Paddy',
    ),
    CropImage(
      image: 'assets/images/wheat.png',
      title: 'Wheat',
    ),
    CropImage(
      image: 'assets/images/maize.png',
      title: 'Maize',
    ),
    CropImage(
      image: 'assets/images/jowar.png',
      title: 'Jowar',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Crop Health Check",
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Obx(
        () => globalController.checkLoading().isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 150,
                    decoration: const BoxDecoration(
                      gradient: 
                        LinearGradient(
                          colors: [
                          Color.fromARGB(255, 205, 252, 206),
                          Colors.white
                          ], 
                          begin: Alignment.topCenter, 
                          end: Alignment.bottomCenter
                        ) 
                    ),
                    child: ListView.separated(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        separatorBuilder: (context, _) => const SizedBox(
                              width: 20,
                            ),
                        itemBuilder: (context, index) {
                          return Obx((() => SizedBox(
                                width: 100,
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        cardIndex.value = index;
                                        setState(() {
                                          if(cardIndex.value == 0) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => const PaddyCropInfo()));
                                          }
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(0),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: cardIndex.value == index
                                                    ? const Color.fromARGB(255, 16, 160, 0)
                                                    : Colors.black,
                                                width: cardIndex.value == index
                                                    ? 4
                                                    : 1)),
                                        child: ClipOval(
                                          child: SizedBox.fromSize(
                                            size: const Size.fromRadius(48),
                                            child: Image.asset(
                                                items[index].image,
                                                fit: BoxFit.contain),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      items[index].title,
                                      style: GoogleFonts.raleway(
                                        fontWeight: cardIndex.value == index
                                            ? FontWeight.bold
                                            : FontWeight.w600,
                                        fontSize: cardIndex.value == index
                                            ? 17
                                            : null,
                                      ),
                                    )
                                  ],
                                ),
                              )));
                        }),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Text(
                          "Crop Disease Diagnosis",
                          style: GoogleFonts.raleway(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 290,
                    width: 380,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 243, 243, 243),
                            Color.fromARGB(255, 207, 220, 226)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Image.asset(
                            "assets/images/capture_image.png",
                            height: 150,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 16, 160, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                fixedSize: const Size(320, 40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Take a Picture",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold, fontSize: 16)),
                                const SizedBox(width: 10,),
                                const Icon(Icons.photo_camera_outlined)
                              ],
                            )),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 16, 160, 0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                fixedSize: const Size(320, 40)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Choose from Gallery",
                                    style: GoogleFonts.raleway(
                                        fontWeight: FontWeight.bold, fontSize: 16)),
                                const SizedBox(width: 10,),
                                const Icon(Icons.storage_outlined)
                              ],
                            ))
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Text(
                          "Weather",
                          style: GoogleFonts.raleway(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  WeatherTab(
                    weatherDataCurrent:
                        globalController.getWeatherData().getCurrentWeather(),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              )),
      )),
    );
  }
}
