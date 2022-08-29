import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../seting_page/seting_page.dart';

class NewStreetPage extends StatelessWidget {
  const NewStreetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(221, 229, 237, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
          title: Center(
            child: Text(
              'Zmiana ulicy',
              style: GoogleFonts.inriaSerif(
                  fontSize: 30, letterSpacing: 10, color: Colors.black),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(173, 198, 206, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Wpisz ulicę...',
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(173, 198, 206, 1),
                    textStyle: GoogleFonts.inriaSerif()),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SetingPage(),
                    ),
                  );
                },
                child: const Text(
                  'Wyszukaj',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
