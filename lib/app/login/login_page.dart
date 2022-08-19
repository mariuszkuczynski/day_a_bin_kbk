import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isCreatingAccount == true ? 'Zarejestruj się' : 'Zaloguj się',
              style: GoogleFonts.inriaSerif(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: widget.emailController,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(173, 198, 206, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: widget.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(173, 198, 206, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Hasło',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(errorMessage),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(173, 198, 206, 1),
                  textStyle: GoogleFonts.inriaSerif(color: Colors.black)),
              onPressed: () async {
                if (isCreatingAccount == true) {
                  //rejestracja
                  {
                  try {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text);
                  } catch (error) {
                    setState(() {
                      errorMessage = error.toString();
                    });
                  }
                }
                } else 
                //logowanie 
                {
                  try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text);
                  } catch (error) {
                    setState(() {
                      errorMessage = error.toString();
                    });
                  }
                }
                
              },
              child: Text(isCreatingAccount == true
                  ? 'Zarejestruj się'
                  : 'Zaloguj się'),
            ),
            if (isCreatingAccount == false) ...[
              TextButton(
                onPressed: () {
                  setState(() {
                    isCreatingAccount = true;
                  });
                },
                child: const Text('Utwórz konto'),
              ),
              
            ],
            if (isCreatingAccount == true) ...[
              TextButton(
                onPressed: () {
                  setState(() {
                    isCreatingAccount = false;
                  });
                },
                child: const Text('Mam juz konto'),
              ),
              
            ],
          ],
        ),
      )),
    );
  }
}
