import 'package:Zoo_Project/ZooInfo/ListAnimals/ListAnimals.dart';
import 'package:Zoo_Project/ZooInfo/ListZooInfo/ZooinfoList/ZooInfolist.dart';
import 'package:Zoo_Project/ZooInfo/listInfor/listinfor.dart';
import 'package:Zoo_Project/navigationBar/main_screen.dart';

final route = {
  '/': (context) => const MainScreen(),
  '/Zooinfolist': (context) => const ZooinfoList(),
  '/ListAnimals': (context) => const ListAnimals(),
  '/listinfor': (context) => const listinfor(),
};
