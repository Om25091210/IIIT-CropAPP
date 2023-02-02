import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondHomePage extends StatefulWidget {
  const SecondHomePage({Key? key}) : super(key: key);

  @override
  State<SecondHomePage> createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "News",
          style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
    );
  }
}
 