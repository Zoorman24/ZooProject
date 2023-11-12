import 'package:Zoo_Project/ZooInfo/ListZooInfo/image.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new_outlined),
                  Text(
                    'ЖИВОТНЫЕ',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Museo700',
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Wrap(
                runSpacing: 11,
                spacing: 11,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'ListAnimals');
                    },
                    child: const Image(
                      image: appimages.ml,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.birds),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.Invert),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.Reptiles),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.Amphibians),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Image(image: appimages.fish),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
