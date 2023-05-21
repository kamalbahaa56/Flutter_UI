import 'package:flutter/material.dart';
import 'package:project_1/pages/homepage.dart';
import 'package:project_1/pages/login.dart';
import 'package:project_1/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:'/' ,
      routes: {
        '/': (context)=> const MyHomePage(),
        '/LoginScreen':(context)=> const LoginScreen(),
        '/SignupScreen' :(context)=> const SignupScreen(),
      },

    );
  }
}


