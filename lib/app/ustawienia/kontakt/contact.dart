

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(221, 229, 237, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
          title: Center(
            child: Text(
              'Kontakt',
              style: GoogleFonts.inriaSerif(
                  fontSize: 30, letterSpacing: 10, color: Colors.black),
            ),
          ),
        ),
        body: Center(
          child:ListView(
            children:  [
              const SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('''
Wydział Ochrony Środowiska:           	22 760 70 20

Deklaracje dotyczące śmieci,
kody na worki:   	                                       22 760 70 17

Opłaty, wezwania:                                   	22 760 70 19

Czyste powietrze, dotacje do piecy:  22 760 70 23

Wycinka drzew:                                        22 760 70 24

BDO, rejestr działalności regulowanej, 
decyzje środowiskowe:                          22 760 70 22

Inne:	                                                             22 760 70 18

PSZOK:                                                          531 690 107
''', style: GoogleFonts.inriaSerif(
                    fontSize: 16 , color: Colors.black),),
              )

            ],
          ),

        ),

      
    );
  }
}