import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SBManagement extends StatelessWidget {
  const SBManagement({Key? key}) : super(key: key);

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
                  title: Text('Seed treatment with Pseudomonas fluorescens @ of 10g/kg of seed followed by seedling dip @ of 2.5 kg or products/ha dissolved in 100 liters and dipping for 30 minutes.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Soil application of P.fluorescens @ of 2.5 kg/ha after 30 days of transplanting (This product should be mixed with 50 kg of FYM/Sand and then applied.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Foliar spray of pseudomonas flurescens at 0.2% concentration, commencing from 45 days after transplanting at 10 days’ intervals for 3 times depending upon the intensity of the disease.',),
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
                  title: Text('Apply FYM 12.5 t/ha or green manure 6.25 t/ha to promote antagonistic microflora'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Avoid excess doses of fertilizers.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Adopt optimum spacing.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Apply organic amendments.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Avoid the flow of irrigation water from infected fields to healthy fields.',),
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
                  title: Text('Control of sheath blight has been mainly through the use of foliar fungicides.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Carbendazim (1 g/lit), Propiconazole (1ml/lit) may be applied.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spraying of infected plants with fungicides, such as Benomyl and Iprodione, and antibiotics, such as Validamycin and Polyoxin, is effective against the disease.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spray Carbendazim 250 g or Chlorothalonil 1 kg or Edifenphos 1 lit/ha'),
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