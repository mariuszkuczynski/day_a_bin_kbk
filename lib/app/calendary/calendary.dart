import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendaryPage extends StatelessWidget {
  const CalendaryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(221, 229, 237, 1),
      child: Center(
        child: ListView(
          children: const [
            CategoryWidget('Zmieszane'),
            CategoryWidget('Segregowane'),
            CategoryWidget('BIO'),
            CategoryWidget('Gabaryty'),
            CategoryWidget('Choinki'),
          ],
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title,
          style: GoogleFonts.inriaSerif(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(173, 198, 206, 1),
          padding: const EdgeInsets.all(18),
        ),
      ),
    );
  }
}
