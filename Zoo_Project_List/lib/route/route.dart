import 'package:Zoo_Project/OnePage/WidgetsOnePageList/OnePageLIST.dart';
import 'package:Zoo_Project/OnePage/WidgetsOnePageList/qr.dart';
import 'package:Zoo_Project/TwoPage/Quest.dart';

final route = {
  '/': (context) => const QuestList(),
  '/Quest': (context) => const Quest(),
  '/qr': (context) => qr(),
};
