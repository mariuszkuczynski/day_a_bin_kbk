import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(221, 229, 237, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
        title: Center(
          child: Text(
            'Powiadomienia',
            style: GoogleFonts.inriaSerif(
                fontSize: 25, letterSpacing: 10, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
