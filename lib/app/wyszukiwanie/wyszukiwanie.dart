import 'package:day_a_bin_kbk/app/ustawienia/seting_page/seting_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(221, 229, 237, 1),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            Text(
              'DAY A BIN',
              style: GoogleFonts.inriaSerif(
                fontSize: 30,
                letterSpacing: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'KOBYŁKA',
              style: GoogleFonts.inriaSerif(
                  fontSize: 30, letterSpacing: 10, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
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
            const SizedBox(
              height: 150,
            ),
            Text(
              'Jesteś zalogowany jako ${user.email} ',
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(173, 198, 206, 1),
                  textStyle: GoogleFonts.inriaSerif()),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text(
                'Wyloguj się',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
