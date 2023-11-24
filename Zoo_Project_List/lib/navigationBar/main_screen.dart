import 'package:Zoo_Project/ListQuest/OnePage/WidgetsOnePageList/OnePageLIST.dart';
import 'package:Zoo_Project/ZooInfo/ListZooInfo/ZooinfoList/ZooInfolist.dart';
import 'package:Zoo_Project/ZooInfo/listInfor/listinfor.dart';
import 'package:Zoo_Project/navigationBar/nav_model.dart';

import 'nav_bar.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final animalslist = GlobalKey<NavigatorState>();
  final maplist = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;

  List<NavModel> _wigetList = [];

  @override
  void initState() {
    super.initState();
    _wigetList = [
      NavModel(
        page: const listinfor(),
        navKey: homeNavKey,
      ),
      NavModel(
        page: const ZooinfoList(),
        navKey: animalslist,
      ),
      NavModel(
        page: const QuestList(),
        navKey: maplist,
      ),
      NavModel(
        page: const ZooinfoList(),
        navKey: profileNavKey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: selectedTab,
          children: _wigetList
              .map((Page) => Navigator(
                    key: Page.navKey,
                    onGenerateInitialRoutes: (navigator, InitialRoute) {
                      return [
                        MaterialPageRoute(builder: (context) => Page.page)
                      ];
                    },
                  ))
              .toList()),
      bottomNavigationBar: NavBar(
        pageIndex: selectedTab,
        onTap: (index) {
          if (index == selectedTab) {
            _wigetList[index]
                .navKey
                .currentState
                ?.popUntil((route) => route.isFirst);
          } else {
            setState(() {
              selectedTab = index;
            });
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 64),
        height: 64,
        width: 64,
        child: FloatingActionButton(
          backgroundColor: Color.fromRGBO(1, 98, 63, 1),
          elevation: 0,
          onPressed: () => debugPrint("Add Button pressed"),
          shape: RoundedRectangleBorder(
            side:
                const BorderSide(width: 3, color: Color.fromRGBO(1, 98, 63, 1)),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
