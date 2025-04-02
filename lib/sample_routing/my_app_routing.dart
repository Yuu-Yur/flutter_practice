import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/sample_routing/login_screen.dart';
import 'package:flutter_practice/sample_routing/main_screen.dart';
import 'package:flutter_practice/sample_routing/signup_screen.dart';

class MyAppRouting extends StatelessWidget {
  const MyAppRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyMainScreen(),
      //라우팅 준비물 1,
      routes: {
        '/main': (context) => const MyMainScreen(),
        '/signup': (context) => const MySignUpScreen(),
        '/login': (context) => const MyLoginScreen(),
      },
    );
  }
}
