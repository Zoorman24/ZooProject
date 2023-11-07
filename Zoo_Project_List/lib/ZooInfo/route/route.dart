import 'package:Zoo_Project/ZooInfo/ListAnimals/ListAnimals.dart';
import 'package:Zoo_Project/ZooInfo/ListZooInfo/ZooinfoList/ZooInfolist.dart';
import 'package:Zoo_Project/ZooInfo/listInfor/listinfor.dart';

final route = {
  '/': (context) => const ZooinfoList(),
  'ListAnimals': (context) => const ListAnimals(),
  'listinfor': (context) => const listinfor(),
};
