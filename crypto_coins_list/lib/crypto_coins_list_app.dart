import 'package:crypto_coins_list/router/router.dart';
import 'package:crypto_coins_list/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesLisetApp extends StatelessWidget {
  const CryptoCurrenciesLisetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoCurrenciesLisetApp',
      theme: darkTheme,
      routes: routes,
    );
  }
}
