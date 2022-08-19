import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return  const Center(child:
            Text('Jeden',),
          );
        }

        if (currentIndex == 1) {
          return  const Center(child:
            Text('Dwa',),
          );
        }

        if (currentIndex == 2) {
          return  const Center(child:
            Text('Trzy',),
          );
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Jesteś zalogowany jako ${widget.user.email} ',
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: const Text('Wyloguj się'),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
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
            BottomNavigationBarItem(icon: Icon(Icons.delete), label: 'PSZOK'),
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
