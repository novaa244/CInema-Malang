import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/theater_page.dart';

void main() {
  runApp(const Assignment2App());
}

class Assignment2App extends StatelessWidget {
  const Assignment2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bioskop-Malang',
      theme: ThemeData(
        primaryColor: Colors.indigo[800],
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/theater': (context) => const TheaterPage(),
      },
    );
  }
}
