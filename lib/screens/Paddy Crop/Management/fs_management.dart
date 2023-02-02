import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FSManagement extends StatelessWidget {
  const FSManagement({Key? key}) : super(key: key);

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
                  title: Text('Use of disease-free seeds that are selected from the healthy crop.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed treatment with carbendazim 2.0g/kg of seeds.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Control insect pests.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Split application of nitrogen is recommended.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Removal and proper disposal of infected plant debris.',),
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
                  title: Text('Among the cultural control, the destruction of straw and stubble from infected plants is recommended to reduce the disease.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Use varieties that are found to be resistant or tolerant against the disease in India.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Avoid field activities when the plants are wet.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Early planted crop has fewer smut balls than the late-planted crop.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('At the time of harvesting, diseased plants should be removed and destroyed so that sclerotia do not fall in the field. This will reduce the primary inoculum for the next crop.',),
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
                  title: Text('Spraying of copper oxychloride at 2.5 g/litre or Propiconazole at 1.0 ml/liter at boot leaf and milky stages will be more useful to prevent fungal infection.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed treatment with carbendazim 2.0g/kg of seeds.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('At tillering and prepare-flowering ages, spray Hexaconazole @ 1ml/lit or Chlorothalonil 2g/lit.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('In areas where the disease may cause yield loss, applying captan, captafol, fentin hydroxide, and mancozeb can be inhibited conidial germination.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('At tillering and pre-flowering stages, spraying of carbendazim fungicide and copper base fungicide can effectively control the disease.',),
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