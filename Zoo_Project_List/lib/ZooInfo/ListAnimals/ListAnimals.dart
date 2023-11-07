import 'package:Zoo_Project/ZooInfo/ListAnimals/schedule.dart';
import 'package:flutter/material.dart';

@override
class ListAnimals extends StatefulWidget {
  const ListAnimals({super.key});
  @override
  State<ListAnimals> createState() => _AnimalList();
}

class _AnimalList extends State<ListAnimals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Padding(
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
                    'Млекопитающие',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        fontFamily: 'museo',
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 15,
                itemBuilder: ((context, index) {
                  return mammals();
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
