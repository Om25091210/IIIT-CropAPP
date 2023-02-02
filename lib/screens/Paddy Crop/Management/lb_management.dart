import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LBManagement extends StatelessWidget {
  const LBManagement({Key? key}) : super(key: key);

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
              "Management",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Preventive Methods-",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Avoid dry nurseries.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Avoid late planting.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Burning of straw and stubbles after harvest.',
                  ),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                      'Avoid grasses and other weeds on bunds and inside.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Dry seed treatment with Pseudomonas fluorescens talc formulation @ 10/kg of seed.',
                  ),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Stagnate water to a depth of 2.5cm over an area of 25m2 in the nursery. Sprinkle 2.5 kg of P. fluorescens (talc) and mix with stagnated water. Soak the root system of seedlings for 30 min and transplant.',
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cultural Methods-",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                      'Planting resistant varieties against the rice blast is the most practical and economical way of controlling rice blast.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                      'Use of Tolerant varieties (CO 47, CO 50, ADT 36, ADT 37,ASD 16,ASD 20,ADT 39,ASD 19,TPS 3,White ponni,ADT 44,BPT 5204,CORH , Palghuna, Swarnamukhi, Swathi, Prabhat, IR - 64, , IR - 36, Jaya)'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Avoid excess N - fertilizer application.',
                  ),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Apply nitrogen in three split doses.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Remove weed hosts from bunds.',
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Chemical Methods-",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Do not apply lower/higher doses of fungicides.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spray before 11.00 AM/after 3.00 PM.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Seed treatment at 2.0 g/kg seed with Captan or Carbendazim or Thiram or Tricyclazole.',
                  ),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                      'Spraying of Tricyclazole at 1g/lit of water or Edifenphos at 1 ml/lit of water or Carbendazim at 1.0 gm/lit.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Pre-Tillering to Mid-Tillering: Light at 2 to 5 % disease severities - Apply Edifenphos or Carbendazim @ 1.0 gm/lit. Delay top dressing of N fertilizers when infection is seen.',
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        )));
  }
}
