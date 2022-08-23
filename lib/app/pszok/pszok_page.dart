import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PszokPage extends StatelessWidget {
  const PszokPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(221, 229, 237, 1),
      child: Center(
        child: ListView(children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('''
Godziny otwarcia PSZOK-u przy ul. Łokietka 80:

Poniedziałek: NIECZYNNE

Wtorek: 7.00 - 13.00

Środa: 7.00 - 13.00

Czwartek: 12.00 - 18.00

Piątek: 12.00 - 18.00

Sobota: 8.00-16.00

Od 1 stycznia 2016 roku Punkty Selektywnej Zbiórki Odpadów Komunalnych, które znajdowały się przy ul. Turowskiej i Przyjacielskiej są nieczynne!

Numer telefonu do osoby obsługującej PSZOK: 531-690-107.

(kontakt pod ww. numerem telefonu dostępny wyłącznie w godzinach funkcjonowania PSZOKU).

Oddajemy:
- odpady ulegające biodegradacji gromadzone w workach (w tym odpady zielone i gałęzie) - bez ziemi, kamieni, piasku
- odpady zebrane selektywnie gromadzone w workach, tj. papier, tekturę, tekstylia; tworzywa sztuczne, metale i opakowania wielomateriałowe; szkło oraz opakowania szklane (ww. odpady nie mogą być zanieczyszczone)
- odpady remontowo-budowlane gromadzone w workach, tj. gruz ceglany, gruz betonowy, gruz ceramiczny, płytki, gres, stłuczka ceramiczna, kawałki tynków, pustaki - Z WYŁĄCZENIEM: kamieni, piachu, ziemi, waty mineralnej, papy, azbestu, itp.
- przeterminowane leki gromadzone w torebkach lub workach,
- zużyte baterie i akumulatory (bateriowe),
- inne odpady niebezpieczne m.in. chemikalia (w tym środki czyszczące, preparaty chemiczne),
- puszki i pojemniki „z” i „po” farbach, lakierach, rozpuszczalnikach, itp.,
- żarówki, świetlówki, źródła światła z diodami elektroluminescencyjnymi (LED), itp.,
- zużyty sprzęt elektryczny i elektroniczny np. lodówki, zamrażarki, kuchenki, komputery, telewizory, drukarki,
- meble i inne odpady wielkogabarytowe (w tym np. dywany, rowery, wózki dziecięce, materace, kołdry, zabawki dużych rozmiarów, wanny, umywalki, muszle klozetowe lub spłuczki, lustra, całe drzwi wewnętrzne)
- okna w całości, zdekompletowane, szyby okienne
- zużyte opony (z samochodów osobowych i przyczepek),
- opakowania ze styropianu zabezpieczające wyroby RTV i AGD,
- naturalne bożonarodzeniowe drzewka choinkowe (bez ozdób),
- skawalony cement,
- kleje do płytek, itp.

Nie oddajemy:
- odpadów zmieszanych
- środków ochrony roślin

Pamietajmy!
- odpady ulegające biodegradacji, odpady segregowane, odpady remontowo-budowlane, przeterminowane leki, zużyty sprzęt elektryczny i elektroniczny, meble i inne odpady wielkogabarytowe, zużyte opony, czysty styropian muszą być oklejone odpowiednimi kodami kreskowymi,

- należy oddawać tylko czyste odpady.

''', style: GoogleFonts.inriaSerif(fontSize: 16)),
          )
        ]),
      ),
    );
  }
}
