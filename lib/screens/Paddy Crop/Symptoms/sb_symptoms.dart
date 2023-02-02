import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SBSymptoms extends StatelessWidget {
  const SBSymptoms({Key? key}) : super(key: key);

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
                title: Text('The fungus affects the crop from tillering to the heading stage.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Initial symptoms are noticed on leaf sheaths near water level.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('On the leaf sheath oval or elliptical or irregular greenish-grey spots are formed.',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('As the spots enlarge, the center becomes grayish-white with an irregular blackish brown or purple-brown border.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Lesions on the upper parts of plants extend rapidly coalescing with each other to cover entire tillers from the water line to the flag leaf.',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('The presence of several large lesions on a leaf sheath usually causes the death of the whole leaf, and in severe cases, all the leaves of a plant may be blighted in this way.',),
              )
            ],
          ),
        )
      )
    );
  }
}