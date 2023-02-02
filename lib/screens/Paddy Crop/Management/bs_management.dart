import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BSManagement extends StatelessWidget {
  const BSManagement({Key? key}) : super(key: key);

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
              style: GoogleFonts.raleway(fontWeight: FontWeight.bold, fontSize: 25),
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
                    const SizedBox(width: 10,),
                    Text(
                      "Preventive Methods-",
                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed treatment with Pseudomonas fluorescens @ 10g/kg of seed followed by seedling dip @ of 2.5 kg or products/ha dissolved in 100 liters and dipping for 30 minutes.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('seed soak/seed treatment with Captan or Thiram at 2.0g /kg of seed'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed treatment with Agrosan or Ceresan 2.5 g/kg seed to ward off seedling blight stage;',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Since the fungus is seed transmitted, a hot water seed treatment (53-54°C) for 10-12 minutes may be effective before sowing. This treatment controls primary infection at the seedling stage. Presoaking the seed in cold water for 8 hours increases effectivity of the treatment.'),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Text(
                      "Cultural Methods-",
                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('As the disease is seed-borne, Use disease-free seeds.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Removal of alternate & collateral hosts.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Growing resistant varieties like ADT44, PY4, CORH1, CO44, CAUVERY, BHAVANI, TPS4, and Dhanu',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Providing proper nutrition for optimum plant growth and prevention of water stress seem to be the most important factors in controlling brown spots.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('The disease is rarely observed in normally fertile rice soils.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Soils known to be low in plant-available silicon should be amended with calcium silicate slag before planting and the field should be well irrigated to avoid water stress.',),
                ),
                const SizedBox(height: 50),
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Text(
                      "Chemical Methods-",
                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('seed soak/seed treatment with Captan or Thiram at 2.0g /kg of seed.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spray Mancozeb (2.0g/lit) or Edifenphos (1ml/lit) - 2 to 3 times at 10 - 15 day intervals.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spray preferably during the early hours or afternoon at flowering and post-flowering stages.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed treatment with Agrosan or Ceresan 2.5 g/kg seed to ward off seedling blight stage; Spraying copper fungicides to control secondary spread.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Grisepfulvin, nystatin, aureofungin, and similar antibiotics have been found effective in preventing primary seedling infection.',),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        )
      )
    );
  }
}