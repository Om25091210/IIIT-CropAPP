import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BSSymptoms extends StatelessWidget {
  const BSSymptoms({Key? key}) : super(key: key);

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
                title: Text('The disease appears first as minute brown dots, later becoming cylindrical or oval to circular. (resemble sesame seed)'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Spots measure 0.5 to 2.0mm in breadth - coalesce to form large patches.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Then several spots coalesce and the leaf dries up.',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Infection also occurs on the panicle, neck with the brown color appearance'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Dark brown or black spots also appear on glumes.',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('The seedlings die and affected nurseries can be often recognized from a distance by their brownish scorched appearance.',),
              )
            ],
          ),
        )
      )
    );
  }
}