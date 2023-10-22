import 'package:crypto_coins_list/Features/Crypto_List/view/Crypto_List_screen.dart';
import 'package:crypto_coins_list/Features/Crypto_coin/view/crypto_coin_screen.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};
