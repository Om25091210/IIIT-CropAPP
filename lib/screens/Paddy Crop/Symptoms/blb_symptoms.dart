import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BLBSymptoms extends StatelessWidget {
  const BLBSymptoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 138, 255, 142),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text(
              "Symptoms",
              style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: const [
              SizedBox(height: 30),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Observed 1-3 Weeks after transplanting'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Green water – Soaked layer along the cut portion or leaf tip of leaves as early symptoms'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Leaves wilt and roll up and become grayish-green to yellow',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Entire plant wilt completely'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Water-soaked to yellowish strips on leaf blades or starting at leaf tips with a wavy margin',),
              )
            ],
          ),
        )
      )
    );
  }
}