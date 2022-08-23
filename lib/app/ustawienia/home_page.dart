import 'package:day_a_bin_kbk/app/informacje/information_page.dart';
import 'package:day_a_bin_kbk/app/pszok/pszok_page.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Builder(
        
        builder: (context) {
           if (currentIndex == 1) {
            
            return Center(
              
              
              child: Text(
                'PSZOK',
                style: GoogleFonts.inriaSerif(
                  fontSize: 30,
                  
                  letterSpacing: 10,
                ),
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
              ),
            ),
          );
        }
        
      ),backgroundColor: const Color.fromRGBO(173, 198, 206, 1),),
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return  const CalendaryPage();
        }

        if (currentIndex == 1) {
          return const PszokPage();
        }

        if (currentIndex == 2) {
          return const InformationPage();
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text  (
                'Ustawienia'
              ),
               SizedBox(
                height: 20,
              ),
              
            ],
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
              icon: Icon(Icons.delete),
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





