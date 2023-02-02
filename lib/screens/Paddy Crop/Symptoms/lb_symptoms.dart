import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LBSymptoms extends StatelessWidget {
  const LBSymptoms({Key? key}) : super(key: key);

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
                title: Text('All aboveground parts of the rice plant (leaves, leaf collar, culm, culm nodes, neck, and panicle) are attacked by the fungus'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Initial symptoms are white to gray-green lesions or spots with brown borders.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Small specks originate on leaves - subsequently enlarge into spindle-shaped spots(0.5 to 1.5cm length, 0.3 to 0.5cm width) with ashy center.',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Older lesions elliptical or spindle-shaped and whitish to gray with necrotic borders several spots coalesce to form big irregular patches.'),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Internodal infection also occurs at the base of the plant which causes white panicles similar to that induced by yellow stem borer or water deficit',),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fiber_manual_record),
                title: Text('Lesions on the neck are grayish brown and cause the girdling of the neck and the panicle to fall over',),
              )
            ],
          ),
        )
      )
    );
  }
}