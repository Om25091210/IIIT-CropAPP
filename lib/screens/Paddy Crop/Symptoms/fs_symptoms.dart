import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FSSymptoms extends StatelessWidget {
  const FSSymptoms({Key? key}) : super(key: key);

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
                title: Text('Individual rice grain transformed into a mass of yellow fruiting bodies.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Growth of velvety spores that enclose floral parts.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Infected grain has greenish smut balls with a velvety appearance.',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('The smut ball appears small at first and grows gradually up to the size of 1 cm.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('It is seen in between the hulls and encloses the floral parts.',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Only a few grains in a panicle are usually infected and the rest are normal.',),
              )
            ],
          ),
        )
      )
    );
  }
}