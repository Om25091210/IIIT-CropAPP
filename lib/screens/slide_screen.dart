import 'package:crop_disease_detection/model/slide_model/image_strings.dart';
import 'package:crop_disease_detection/model/slide_model/slide_model.dart';
import 'package:crop_disease_detection/model/slide_model/text_strings.dart';
import 'package:crop_disease_detection/screens/welcome_screen.dart';
import 'package:crop_disease_detection/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets/slide_page_widget.dart';

class SlideScreenPage extends StatefulWidget {
  SlideScreenPage({Key? key}) : super(key: key);

  @override
  State<SlideScreenPage> createState() => _SlideScreenPageState();
}

class _SlideScreenPageState extends State<SlideScreenPage> {
  final controller = LiquidController();

  int currentPage = 0;
  int? isViewed;

  @override
  void initState() {
    super.initState();
    _checkPageHasBeenShown();
  }

  _checkPageHasBeenShown() async {
    final prefs = await SharedPreferences.getInstance();
    final hasBeenShown = prefs.getBool('has_been_shown') ?? false;
    if (!hasBeenShown) {
      isViewed = prefs.getInt('slide');
    } else {
      isViewed = 1;
    }
  }

  _setPageHasBeenShown() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('has_been_shown', true);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      SlidePageWidget(
          model: SlideModel(
              image: slideImage1,
              title: slidePageTitle1,
              description: slidePageDescription1,
              bgColor: slidePage1Color,
              height: size.height)),
      SlidePageWidget(
          model: SlideModel(
              image: slideImage2,
              title: slidePageTitle2,
              description: slidePageDescription2,
              bgColor: slidePage2Color,
              height: size.height)),
      SlidePageWidget(
          model: SlideModel(
              image: slideImage3,
              title: slidePageTitle3,
              description: slidePageDescription3,
              bgColor: slidePage3Color,
              height: size.height))
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            fullTransitionValue: 300,
            waveType: WaveType.liquidReveal,
            onPageChangeCallback: OnPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60,
              right: 18,
              child: ElevatedButton(
                  onPressed: () {
                    _setPageHasBeenShown();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 16, 160, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      fixedSize: const Size(150, 50)),
                  child: Text("Get Started",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold, fontSize: 16)))),
          Positioned(
            bottom: 160,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: const WormEffect(
                  activeDotColor: Color(0xff272727), dotHeight: 10),
            ),
          )
        ],
      ),
    ) ;
  }

  OnPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
