import 'package:Zoo_Project/ZooInfo/ListAnimals/image.dart';
import 'package:Zoo_Project/ZooInfo/listInfor/listinfor.dart';

import 'package:flutter/material.dart';

class mammals extends StatelessWidget {
  const mammals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => listinfor()));
            },
            child: Container(
              height: 91,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 245, 245, 245),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(3, 3, 0, 3),
                    child: Container(
                        height: 85,
                        width: 92,
                        child: Image(image: appimages.Rectangle4)),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Container(
                    width: 165,
                    height: 91,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 165,
                          height: 69,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Юго-восточный  ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'museo700',
                                      color: Color.fromARGB(255, 52, 32, 31))),
                              Text('Место нахождение ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'museo300',
                                      color: Color.fromARGB(255, 52, 32, 31))),
                            ],
                          ),
                        ),
                        Container(
                          width: 165,
                          height: 22,
                          child: Text('Расстояние',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'museo300',
                                  color: Color.fromARGB(255, 52, 32, 31))),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(31, 30, 0, 34),
                    child: Container(child: Image(image: appimages.arrow)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
