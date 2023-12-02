import 'package:Zoo_Project/image/image.dart';
import 'package:flutter/material.dart';

@override
class questionlist extends StatefulWidget {
  const questionlist({super.key});
  @override
  State<questionlist> createState() => _questionlist();
}

class _questionlist extends State<questionlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image(image: appimages.arrowcircleleft),
                  ),
                  Text(
                    'Задать вопрос',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'museo700',
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.fromLTRB(16, 13, 0, 13),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 197, 198, 204),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Ваше имя',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.fromLTRB(16, 13, 0, 13),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 197, 198, 204),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Почта для ответа',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextField(
                decoration: InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.fromLTRB(16, 13, 0, 176),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 197, 198, 204),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Ваш вопрос',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Container(
                      alignment: Alignment.center,
                      height: 49,
                      width: 326,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 1, 98, 63)),
                      child: Text(
                        'Спросить',
                        style: TextStyle(
                            fontFamily: 'museo700',
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
