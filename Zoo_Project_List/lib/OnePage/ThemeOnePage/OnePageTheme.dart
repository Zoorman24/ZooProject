import 'package:Zoo_Project/OnePage/WidgetsOnePageList/OnePageLIST.dart';
import 'package:flutter/material.dart';

class ZooApp extends StatelessWidget {
  const ZooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Задания',
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.black,
              selectedItemColor: Color.fromRGBO(1, 98, 63, 1),
              unselectedItemColor: Colors.grey),
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
          primarySwatch: Colors.yellow,
          dividerColor: Colors.red,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            titleTextStyle: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          listTileTheme: const ListTileThemeData(iconColor: Colors.white),
          textTheme: TextTheme(
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(52, 32, 31, 1),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
              labelSmall: TextStyle(
                color: const Color.fromRGBO(52, 32, 31, 1).withOpacity(0.6),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ))),
      home: const MyHomePage(),
    );
  }
}
