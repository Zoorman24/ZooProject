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
      body: SafeArea(
        child: ListView(
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
                            child:
                                const Icon(Icons.arrow_back_ios_new_outlined),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          const Text(
                            'НАЗВАНИЕ',
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'museo700',
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
                                fontSize: 24,
                                fontFamily: 'museo300',
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
                                fontSize: 14,
                                fontFamily: 'museo700',
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
                                fontSize: 10,
                                fontFamily: 'museo700',
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
                                fontSize: 14,
                                fontFamily: 'museo700',
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
                                fontSize: 10,
                                fontFamily: 'museo700',
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
                                fontSize: 14,
                                fontFamily: 'museo700',
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
                                fontSize: 10,
                                fontFamily: 'museo700',
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
                                fontSize: 14,
                                fontFamily: 'museo700',
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
                                fontSize: 10,
                                fontFamily: 'museo700',
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
                                fontSize: 14,
                                fontFamily: 'museo700',
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
                            height: 600,
                            width: 800,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(255, 179, 87, 1)),
                          ),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(23, 60, 15, 0),
                                child: Text(
                                    'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.'),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(23, 20, 0, 0),
                                    child: Text(
                                      'Среда обитания',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'museo700',
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(23, 10, 141, 0),
                                child: Text(
                                  'Жирафы хорошо приспособлены к жизни на открытых, усеянных деревьями африканских равнинах.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(23, 20, 15, 0),
                                child: Text(
                                  'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                    top: 535, left: 230, child: Image(image: appimages.afr)),
                const Positioned(
                    left: 70, top: 70, child: Image(image: appimages.Layer)),
                const Positioned(
                  left: 30,
                  top: 385,
                  child: Image(image: appimages.audio),
                ),
                const Positioned(
                  left: 105,
                  top: 380,
                  child: Image(image: appimages.AR),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
