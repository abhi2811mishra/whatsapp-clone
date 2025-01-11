import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:whatsapp/Screens/home/homescreen.dart';
import 'package:whatsapp/Screens/splash/splashscreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
        useMaterial3: false,
        fontFamily: "Regular"
      ),
      home: SplashScreen()
    );
  }
}