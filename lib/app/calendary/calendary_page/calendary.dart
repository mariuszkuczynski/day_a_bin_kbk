import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/bio/bio.dart';
import '../pages/choinki/choinki.dart';
import '../pages/gabaryty/gabaryty.dart';
import '../pages/segregowane/segregowane.dart';
import '../pages/zmieszane/zmieszane_page.dart';

class CalendaryPage extends StatelessWidget {
  CalendaryPage({
    Key? key,
  }) : super(key: key);

  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(221, 229, 237, 1),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: ListView(
            children: [
              //ZMIESZANE
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ZmieszanePage()),
                  );
                },
                child: Text(
                  'Zmieszane',
                  style: GoogleFonts.inriaSerif(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),
              //SEGREGOWANE
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SegregowanePage()),
                  );
                },
                child: Text(
                  'Segregowane',
                  style: GoogleFonts.inriaSerif(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),

              //BIO
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const BioPage()),
                  );
                },
                child: Text(
                  'BIO',
                  style: GoogleFonts.inriaSerif(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),

              //GABARYTY
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const GabarytyPage()),
                  );
                },
                child: Text(
                  'Gabaryty',
                  style: GoogleFonts.inriaSerif(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),

              //CHOINKI
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ChoinkiPage()),
                  );
                },
                child: Text(
                  'Choinki',
                  style: GoogleFonts.inriaSerif(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
