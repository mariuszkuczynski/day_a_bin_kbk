import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZmieszanePage extends StatelessWidget {
  const ZmieszanePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(221, 229, 237, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(173, 198, 206, 1),
        title: Center(
          child: Text(
            'Zmieszane',
            style: GoogleFonts.inriaSerif(
                fontSize: 30, letterSpacing: 10, color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: const [
              CategoryWidget('Styczeń'),
              SizedBox(height: 10),
              CategoryWidget('Luty'),
              SizedBox(height: 10),
              CategoryWidget('Marzec'),
              SizedBox(height: 10),
              CategoryWidget('Kwiecień'),
              SizedBox(height: 10),
              CategoryWidget('Maj'),
              SizedBox(height: 10),
              CategoryWidget('Czerwiec'),
              SizedBox(height: 10),
              CategoryWidget('Lipiec'),
              SizedBox(height: 10),
              CategoryWidget('Sierpień'),
              SizedBox(height: 10),
              CategoryWidget('Wrzesień'),
              SizedBox(height: 10),
              CategoryWidget('Październik'),
              SizedBox(height: 10),
              CategoryWidget('Listopad'),
              SizedBox(height: 10),
              CategoryWidget('Grudzień'),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.inriaSerif(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 20),
          //DATA WYWOZU
          Text(
            '04    22',
            style: GoogleFonts.inriaSerif(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      height: 65,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromRGBO(173, 198, 206, 1),
      ),
    );
  }
}
