// import 'dart:io';

import 'package:Zoo_Project/ZooIcons/zoo_icons.dart';
import 'package:Zoo_Project/repoaitories/animals/animals_repositories.dart';

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        // margin: EdgeInsets.only(
        //   bottom: Platform.isAndroid ? 16 : 0,
        // ),
        children: [
          BottomAppBar(
            elevation: 0.0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    navItem(
                      ZooIcons.house,
                      pageIndex == 0,
                      onTap: () => onTap(0),
                    ),
                    navItem(
                      ZooIcons.animals,
                      pageIndex == 1,
                      onTap: () => onTap(1),
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    navItem(
                      ZooIcons.map,
                      pageIndex == 2,
                      onTap: () => onTap(2),
                    ),
                    navItem(
                      ZooIcons.profile,
                      pageIndex == 3,
                      onTap: () => onTap(3),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 130,
                left: MediaQuery.of(context).size.width / 2.4),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(1, 98, 63, 1)),
                height: 64,
                width: 64,
                child: InkWell(onTap: (){ AnimalsRepository().getAnimalsList();},
                  // onTap: () => debugPrint("Add Button pressed"),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                )),
          ),
        ]);
  }

  Widget navItem(IconData icon, bool selected, {Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          color: selected
              ? Color.fromRGBO(1, 98, 63, 1)
              : Color.fromRGBO(1, 98, 63, 1).withOpacity(0.4),
        ),
      ),
    );
  }
}
