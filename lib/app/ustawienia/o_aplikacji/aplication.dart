

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AplicationPage extends StatelessWidget {
  const AplicationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(221, 229, 237, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
          title: Center(
            child: Text(
              'O Aplikacji',
              style: GoogleFonts.inriaSerif(
                  fontSize: 30, letterSpacing: 10, color: Colors.black),
            ),
          ),
        ),
      
    );
  }
}