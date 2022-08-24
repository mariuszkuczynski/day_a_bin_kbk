import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(221, 229, 237, 1),
      child: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('''
JAK SEGREGOWAĆ?

METALE I TWORZYWA SZTUCZNE
Należy wyrzucać:

- odkręcone i zgniecione plastikowe butelki po napojach
- nakrętki, o ile nie zbieramy ich osobno w ramach akcji dobroczynnych
- plastikowe opakowania po produktach spożywczych
- opakowania wielomateriałowe (np. kartony po mleku i sokach)
- opakowania po środkach czystości (np. proszkach do prania), kosmetykach (np. szamponach, paście do zębów) itp.
- plastikowe torby, worki, reklamówki, inne folie
- aluminiowe puszki po napojach i sokach
- puszki po konserwach
- folię aluminiową
- metale kolorowe
- kapsle, zakrętki od słoików

Nie należy wyrzucać:

- butelek i pojemników z zawartością
- plastikowych zabawek
- opakowań po lekach i zużytych artykułów medycznych
- opakowań po olejach silnikowych
- części samochodowych
- zużytych baterii i akumulatorów
- puszek i pojemników po farbach i lakierach
- zużytego sprzętu elektronicznego i AGD

PAPIER
Należy wyrzucać:

- opakowania z papieru, karton, tekturę (także falistą)
- katalogi, ulotki, prospekty
- gazety i czasopisma
- papier szkolny i biurowy, zadrukowane kartki
- zeszyty i książki
- papier pakowy
- torby i worki papierowe

Nie należy wyrzucać:

- ręczników papierowych i zużytych chusteczek higienicznych
- papieru lakierowanego i powleczonego folią
- papieru zatłuszczonego lub mocno zabrudzonego
- kartonów po mleku i napojach
- papierowych worków po nawozach, cemencie i innych materiałach budowlanych
- tapet
- pieluch jednorazowych i innych materiałów higienicznych
- zatłuszczonych jednorazowych opakowań z papieru i naczyń jednorazowych
- ubrań

SZKŁO
Należy wyrzucać:

- butelki i słoiki po napojach i żywności (w tym butelki po napojach alkoholowych i olejach roślinnych)
- szklane opakowania po kosmetykach (jeżeli nie są wykonane z trwale połączonych kilku surowców)

Nie należy wyrzucać:

- ceramiki, doniczek, porcelany, fajansu, kryształów
- szkła okularowego
- szkła żaroodpornego
- Zniczy z zawartością wosku
- żarówek i świetlówek
- reflektorów
- opakowań po lekach, rozpuszczalnikach, olejach silnikowych
- luster
- szyb okiennych i zbrojonych
- monitorów i lamp telewizyjnych
- termometrów i strzykawek

ODPADY BIODEGRADOWALNE
Należy wyrzucać:

- odpadki warzywne i owocowe (w tym obierki itp.)
- gałęzie drzew i krzewów
- skoszoną trawę, liście, kwiaty
- trociny i korę drzew
- niezaimpregnowane drewno
- resztki jedzenia

Nie należy wyrzucać:

- kości zwierząt
- oleju jadalnego
- odchodów zwierząt
- popiołu z węgla kamiennego
- leków
- drewna impregnowanego
- płyt wiórowych i pilśniowych MDF
- ziemi i kamieni
- innych odpadów komunalnych (w tym niebezpiecznych)

ODPADY ZMIESZANE
- Do pojemnika z odpadami zmieszanymi należy wrzucać wszystko to, czego nie można odzyskać w procesie recyklingu, z wyłączeniem odpadów niebezpiecznych.

''', style: GoogleFonts.inriaSerif(fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }
}
