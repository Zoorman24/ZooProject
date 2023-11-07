import 'package:Zoo_Project/ZooInfo/ListZooInfo/image.dart';

import 'package:flutter/material.dart';

@override
class listinfor extends StatefulWidget {
  const listinfor({super.key});
  @override
  State<listinfor> createState() => _listinfor();
}

class _listinfor extends State<listinfor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(11, 16, 10, 0),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: const Icon(Icons.arrow_back_ios_new_outlined),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Text(
                          'Название',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Класс',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 24,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 1, 98, 63)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Информация',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Параметр 1',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Значение 1',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 219, 128, 10)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Параметр 2',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Значение 2',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 219, 128, 10)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Параметр 3',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Значение 3',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 219, 128, 10)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Параметр 4',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Значение 4',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'museo',
                              color: Color.fromARGB(255, 219, 128, 10)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 400,
                          width: 600,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(255, 179, 87, 1)),
                        ),
                        const Row(
                          children: [
                            Column(
                              children: [],
                            ),
                            SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Positioned(
                  left: 95, top: 40, child: Image(image: appimages.Layer)),
              const Positioned(
                left: 30,
                top: 350,
                child: Image(image: appimages.audio),
              ),
              const Positioned(
                left: 105,
                top: 348,
                child: Image(image: appimages.AR),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
