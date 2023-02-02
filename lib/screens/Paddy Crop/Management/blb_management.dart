import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BLBManagement extends StatelessWidget {
  const BLBManagement({Key? key}) : super(key: key);

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
                  title: Text('Seed treatment with bleaching powder (100g/l) zinc sulfate (2%) reduces bacterial blight.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed treatment - seed soaking for 8 hours in Agrimycin (0.025%) and wateable ceresin (0.05%) followed by hot water treatment for 30 min at 52-54' '\u2103'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed soaking for 8 hours in ceresin (0.1%) and treat with streptocyclin (3g in 1 lit).',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spray neem oil 3% or NSKE 5%'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spray fresh cow dung in one lit of water allow to settle and sieve, sue supernatant liquid.',),
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
                  title: Text('Grow tolerant varieties (IR20 IR72, PONMANI, TKM6)'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Avoid clipping of seedling during transplanting.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Avoid flow of water from affected fields',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Maintain proper plant spacing'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Destruction of weed and collateral host',),
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
                  title: Text('Seed treatment with bleaching powder (100g/l) and zinc sulfate (2%) reduces bacteria.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Seed treatment - seed soaking for 8 hours in Agrimycin (0.025%) and wateable ceresin (0.05%) followed by hot water treatment for 30 min at 52-54' '\u2103'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Spray streptomycin sulphate + Tetracycline combination 300 g + copper oxychloride 1.25 kg/ha. If necessary, repeat 15 days later.',),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Application of bleaching powder @ 5 kg/ha in the irrigation water is recommended in the kresek stage.'),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Foliar spray with copper fungicides alternatively with streptocyclin (250ppm) to check secondary spread.',),
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