import 'package:Zoo_Project/ListQuest/OnePage/ThemeOnePage/OnePageTheme.dart';
import 'package:Zoo_Project/ListQuest/route/route.dart';

import 'package:flutter/material.dart';

class ZooApp extends StatelessWidget {
  const ZooApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeQuest,
      routes: route,
    );
  }
}
