import 'package:day_a_bin_kbk/app/informacje/information_page.dart';
import 'package:day_a_bin_kbk/app/pszok/pszok_page.dart';
import 'package:day_a_bin_kbk/app/ustawienia/kontakt/contact.dart';
import 'package:day_a_bin_kbk/app/ustawienia/o_aplikacji/aplication.dart';
import 'package:day_a_bin_kbk/app/ustawienia/powiadomienia/notification.dart';
import 'package:day_a_bin_kbk/app/ustawienia/zmiana_ulicy/new_street.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../calendary/calendary.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(221, 229, 237, 1),
      appBar: AppBar(
        title: Builder(builder: (context) {
          if (currentIndex == 1) {
            return Center(
              child: Text(
                'PSZOK',
                style: GoogleFonts.inriaSerif(
                    fontSize: 30, letterSpacing: 10, color: Colors.black),
              ),
            );
          }

          if (currentIndex == 2) {
            return Center(
              child: Text(
                'Informacje',
                style: GoogleFonts.inriaSerif(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                  color: Colors.black,
                ),
              ),
            );
          }
          if (currentIndex == 3) {
            return Center(
              child: Text(
                'Ustawienia',
                style: GoogleFonts.inriaSerif(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                  color: Colors.black,
                ),
              ),
            );
          }
          return Center(
            child: Text(
              'Terminarz',
              style: GoogleFonts.inriaSerif(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
                color: Colors.black,
              ),
            ),
          );
        }),
        backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
      ),
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return  CalendaryPage();
        }

        if (currentIndex == 1) {
          return const PszokPage();
        }

        if (currentIndex == 2) {
          return const InformationPage();
        }

        return Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: ListView(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const NewStreetPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Zmiana ulicy',
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
                
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const NotificationPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Powiadomienia',
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ContactPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Kontakt',
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AplicationPage(),
                      ),
                    );
                  },
                  child: Text(
                    'O Aplikacji',
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
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          showUnselectedLabels: false,
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                ),
                backgroundColor: Color.fromRGBO(173, 198, 206, 1),
                label: 'Terminarz'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.delete,
                ),
                label: 'PSZOK'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.info_outline,
                ),
                label: 'Informacje'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Ustawienia'),
          ]),
    );
  }
}
