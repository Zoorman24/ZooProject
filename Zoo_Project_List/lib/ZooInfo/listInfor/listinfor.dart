import 'package:Zoo_Project/image/image.dart';

import 'package:flutter/material.dart';

@override
class listinfor extends StatefulWidget {
  const listinfor({super.key});
  @override
  State<listinfor> createState() => _listinfor();
}

double finalduration = const Duration(minutes: 5).inSeconds.toDouble();
Duration duration = const Duration(minutes: 5);

String transformString(int seconds) {
  String minuteString =
      '${(seconds / 60).floor() < 10 ? 0 : ''}${(seconds / 60).floor()}';
  String secondString = '${seconds % 60 < 10 ? 0 : ''}${seconds % 60}';
  return '$minuteString:$secondString';
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
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Параметр 1',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'museo700',
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              Text(
                                'Значение 1',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'museo700',
                                    color: Color.fromARGB(255, 219, 128, 10)),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                color: Colors.black12,
                                height: 1,
                                width: 100,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Параметр 2',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  'Значение 2',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 1,
                                  width: 100,
                                ),
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Параметр 3',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  'Значение 3',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 1,
                                  width: 100,
                                ),
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Параметр 4',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  'Значение 4',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 219, 128, 10)),
                                ),
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromRGBO(255, 179, 87, 1)),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 36, 15, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        SliderTheme(
                                            data: SliderThemeData(
                                                overlayShape:
                                                    SliderComponentShape
                                                        .noOverlay),
                                            child: Slider(
                                              value: finalduration -
                                                  duration.inSeconds.toDouble(),
                                              min: 0.0,
                                              max: finalduration,
                                              onChanged: (v) => {
                                                setState(() {
                                                  duration = Duration(
                                                      seconds: finalduration
                                                              .toInt() -
                                                          v.toInt());
                                                })
                                              },
                                              activeColor: Colors.redAccent,
                                              inactiveColor: Colors.grey,
                                            )),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(transformString(
                                                duration.inSeconds))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 22,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 41,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Center(child: Text('Отряд')),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 41,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Center(child: Text('Семейство')),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                      'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.'),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 189,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Среда обитания'
                                              '\n',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'museo700',
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ),
                                            Text(
                                              'Жирафы хорошо приспособлены к жизни на открытых, усеянных деревьями африканских равнинах.',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'museo300',
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Image(image: appimages.afr),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.Жирафы — самые высокие наземные животные. Жираф мог заглянуть в окно второго этажа, даже не вставая на цыпочки.',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'museo300',
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 317,
                                    height: 1,
                                    color: Colors.black12,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Жизнь в нашем зоопарке',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'museo700',
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                      Text(
                                        'Описание животных в зоопарке',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'museo300',
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Positioned(
                    left: 100, top: 85, child: Image(image: appimages.Layer)),
                Positioned(
                  left: 30,
                  top: 385,
                  child: Container(
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {}, child: Image(image: appimages.audio)),
                        SizedBox(
                          width: 12,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image(
                            image: appimages.AR,
                          ),
                        ),
                      ],
                    ),
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
