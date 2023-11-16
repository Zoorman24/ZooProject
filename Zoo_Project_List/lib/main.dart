import 'package:Zoo_Project/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(1, 98, 63, 1),
        //primarySwatch: Color.fromRGBO(1, 98, 63, 1),
      ),
      home: const MainScreen(),
    );
  }
}
