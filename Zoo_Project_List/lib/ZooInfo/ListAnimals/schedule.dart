import 'package:Zoo_Project/ZooInfo/ListZooInfo/image.dart';
import 'package:flutter/material.dart';

class mammals extends StatelessWidget {
  const mammals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Stack(
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 0,
                color: Color.fromARGB(255, 245, 245, 245),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: const Color.fromARGB(255, 245, 245, 245),
            leading: const Image(image: appimages.Rectangle),
            minLeadingWidth: 92,
            title: const Text(
              'Название животного',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'museo700',
                  color: Color.fromARGB(255, 52, 32, 31)),
            ),
            subtitle: const Text(
              'Место нахождения' '\n' '\n' '\n400m',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'museo300',
                  color: Color.fromARGB(255, 52, 32, 31)),
            ),
            isThreeLine: true,
            dense: true,
            trailing: const Icon(
              Icons.location_on,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('listinfor');
            },
          ),
        ],
      ),
    );
  }
}
