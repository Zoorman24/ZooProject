import 'package:Zoo_Project/ZooInfo/ListAnimals/ListAnimals.dart';
import 'package:Zoo_Project/image/image.dart';
import 'package:flutter/material.dart';

@override
class ZooinfoList extends StatefulWidget {
  const ZooinfoList({super.key});
  @override
  State<ZooinfoList> createState() => _Quest();
}

class _Quest extends State<ZooinfoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ЖИВОТНЫЕ',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Museo700',
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Wrap(
              runSpacing: 11,
              spacing: 11,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 172,
                  height: 162,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ListAnimals()));
                    },
                    child: const Image(
                      image: appimages.ml,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: 172,
                  height: 162,
                  child: InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.birds),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 172,
                  height: 162,
                  child: InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.Invert),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: 172,
                  height: 162,
                  child: InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.Reptiles),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 172,
                  height: 162,
                  child: InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.Amphibians),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: 172,
                  height: 162,
                  child: InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.fish),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
