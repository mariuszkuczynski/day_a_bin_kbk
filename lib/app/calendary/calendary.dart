import 'package:day_a_bin_kbk/app/wyszukiwanie/pages/zmieszane/zmieszane_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  primary: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),
              //SEGREGOWANE
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ZmieszanePage()),
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
                  primary: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),

              //BIO
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ZmieszanePage()),
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
                  primary: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),

              //GABARYTY
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ZmieszanePage()),
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
                  primary: const Color.fromRGBO(173, 198, 206, 1),
                  padding: const EdgeInsets.all(18),
                  shape: shape,
                ),
              ),
              const SizedBox(height: 15),

              //CHOINKI
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ZmieszanePage()),
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
                  primary: const Color.fromRGBO(173, 198, 206, 1),
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
