import 'package:Zoo_Project/Api/Api.dart';
import 'package:Zoo_Project/route/Startlist.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  final client = initApiClient();
  runApp(const MyApp());
}
