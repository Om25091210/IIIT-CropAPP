import 'package:crop_disease_detection/screens/Paddy%20Crop/Diseases/blb_page_info.dart';
import 'package:crop_disease_detection/screens/Paddy%20Crop/Diseases/bs_page_info.dart';
import 'package:crop_disease_detection/screens/Paddy%20Crop/Diseases/fs_page_info.dart';
import 'package:crop_disease_detection/screens/Paddy%20Crop/Diseases/lb_page_info.dart';
import 'package:crop_disease_detection/screens/Paddy%20Crop/Diseases/sb_page_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaddyCropInfo extends StatefulWidget {
  const PaddyCropInfo({Key? key}) : super(key: key);

  @override
  State<PaddyCropInfo> createState() => _PaddyCropInfoState();
}

class _PaddyCropInfoState extends State<PaddyCropInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 208, 255, 211),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 185, 250, 187),
                    Colors.white
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Text("Diseases", style: GoogleFonts.raleway(fontSize: 30, fontWeight: FontWeight.w600),),
                        const SizedBox(height: 5,),
                        Text("Tap for more info", style: GoogleFonts.raleway(fontSize: 15),),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BLBPage()));
                    },
                    child: Container(
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 185, 250, 187),  
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/blb.jpg"),
                          const SizedBox(width: 20,),
                          Expanded(
                            child: Text(
                              "Bacterial Leaf Blight", 
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LBPage()));
                    },
                    child: Container(
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 185, 250, 187),  
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/lb.JPG"),
                          const SizedBox(width: 60,),
                          Expanded(
                            child: Text(
                              "Leaf Blast", 
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BSPage()));
                    },
                    child: Container(
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 185, 250, 187),  
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/bs.jpg"),
                          const SizedBox(width: 50,),
                          Expanded(
                            child: Text(
                              "Brown Spot", 
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FSPage()));
                    },
                    child: Container(
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 185, 250, 187),  
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/fs.jpg"),
                          const SizedBox(width: 50,),
                          Expanded(
                            child: Text(
                              "False Smut", 
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SBPage()));
                    },
                    child: Container(
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 255, 255),
                            Color.fromARGB(255, 185, 250, 187),  
                          ]
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/sb.JPG"),
                          const SizedBox(width: 50,),
                          Expanded(
                            child: Text(
                              "Sheath Blight", 
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}