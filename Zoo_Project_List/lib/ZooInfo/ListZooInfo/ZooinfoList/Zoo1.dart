import 'package:Zoo_Project/ZooInfo/route/route.dart';
import 'package:flutter/material.dart';

class Zooinfo extends StatelessWidget {
  const Zooinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: route,
    );
  }
}
