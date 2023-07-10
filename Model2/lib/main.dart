import 'package:flutter/material.dart';
import 'package:model2/Beres_Screen.dart';
import 'package:model2/InTro_Screen1.dart';
import 'package:model2/Intro_Screen2.dart';
import 'package:model2/Introduce_Screen.dart';
import 'package:model2/Login_Screen.dart';
import 'package:model2/Register_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: loginScreen(),
    );
  }
}


