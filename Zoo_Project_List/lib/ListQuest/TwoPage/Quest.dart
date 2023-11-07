import 'package:flutter/material.dart';

@override
class Quest extends StatefulWidget {
  const Quest({super.key});
  @override
  State<Quest> createState() => _Quest();
}

class _Quest extends State<Quest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(117, 37, 116, 20),
                  child: Image(
                    image: AssetImage('assets/image/num.png'),
                  )),
              const Row(
                children: [
                  Text(
                    'Тема: Животное',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'museo',
                        color: Color.fromARGB(255, 72, 72, 72)),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                children: [
                  Text(
                    'Выбиерите верный вариант:',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'museo',
                        color: Color.fromARGB(255, 52, 32, 31)),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          TextButton(
                            style: const ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.green),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 255, 255, 255)),
                                elevation: MaterialStatePropertyAll(0),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(321, 61)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(22)),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 0, 0, 0))))),
                            onPressed: () {},
                            child: const Text('Факт 1'),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Stack(
                        children: [
                          TextButton(
                            style: const ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.green),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 255, 255, 255)),
                                elevation: MaterialStatePropertyAll(0),
                                minimumSize:
                                    MaterialStatePropertyAll(Size(321, 61)),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(22)),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 0, 0, 0))))),
                            onPressed: () {},
                            child: const Text('Факт 2'),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              TextButton(
                                style: const ButtonStyle(
                                    foregroundColor:
                                        MaterialStatePropertyAll(Colors.green),
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(255, 1, 98, 63)),
                                    elevation: MaterialStatePropertyAll(0),
                                    minimumSize:
                                        MaterialStatePropertyAll(Size(321, 61)),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(22)),
                                            side: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0))))),
                                onPressed: () {},
                                child: const Text(
                                  'Факт 3',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const Positioned(
                                  left: 300,
                                  top: -10,
                                  child: Image(
                                    image: AssetImage('assets/image/compl.png'),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 71,
                      horizontal: 142,
                    ),
                    child: TextButton(
                        onPressed: () {}, child: const Text('Далее')),
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
