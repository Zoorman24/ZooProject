import 'package:Zoo_Project/image/image.dart';
import 'package:flutter/material.dart';

@override
class profile extends StatefulWidget {
  const profile({super.key});
  @override
  State<profile> createState() => _profile();
}

class _profile extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 32, 10, 0),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 97,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 1, 98, 63)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(19, 0, 0, 16),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Заказать еду',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'mouse700',
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 179),
                        child: Container(
                          height: 60,
                          width: 55,
                          child: Image(
                            image: appimages.zoofood3,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 97,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(19, 0, 0, 16),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Прогресс изучения',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'mouse700',
                              color: const Color.fromARGB(255, 52, 32, 31)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Container(
                          height: 42,
                          width: 42,
                          child: Image(
                            image: appimages.iconlistcheck,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 97,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(19, 0, 0, 16),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Купить билет',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'mouse700',
                              color: Color.fromARGB(255, 52, 32, 31)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 188),
                        child: Container(
                          height: 42,
                          width: 42,
                          child: Image(
                            image: appimages.iconfontticket,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 181,
                      height: 173,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 240, 240, 240)),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(115, 16, 16, 0),
                          child: Container(
                            height: 42,
                            width: 42,
                            child: Image(image: appimages.iconfontuser),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13, 77, 28, 0),
                          child: Text(
                            'Личный кабинет',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'mouse700',
                                color: Color.fromARGB(255, 52, 32, 31)),
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 181,
                      height: 173,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 240, 240, 240)),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(115, 16, 16, 0),
                          child: Container(
                            height: 42,
                            width: 42,
                            child: Image(image: appimages.comments),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13, 77, 28, 0),
                          child: Text(
                            'Личный кабинет',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'mouse700',
                                color: Color.fromARGB(255, 52, 32, 31)),
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
