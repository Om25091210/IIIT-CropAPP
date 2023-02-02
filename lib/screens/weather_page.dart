import 'package:crop_disease_detection/controller/global_controller.dart';
import 'package:crop_disease_detection/utils/custom_colors.dart';
import 'package:crop_disease_detection/widgets/current_weather_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/comfort_level.dart';
import '../widgets/daily_weather_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/hourly_weather_widget.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final GlobalController globalController =
      Get.put(GlobalController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => globalController.checkLoading().isTrue
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/clouds.png",
                      height: 200,
                      width: 200,
                    ),
                    const CircularProgressIndicator()
                  ]
                ),
              )
            : Center(
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(height: 20),
                    const HeaderWidget(),
                    CurrentWeatherWidget(weatherDataCurrent: globalController.getWeatherData().getCurrentWeather()),
                    const SizedBox(height: 10),
                    HourlyWeatherWidget(weatherDataHourly: globalController.getWeatherData().getHourlyWeather(),),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    DailyWeatherWidget(weatherDataDaily: globalController.getWeatherData().getDailyWeather(),),
                    Container(
                      height: 1,
                      color: CustomColors.dividerLine,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ComfortLevel(weatherDataCurrent: globalController.getWeatherData().getCurrentWeather()),
                  ],
                ),
            )),
      ),
    );
  }
}
