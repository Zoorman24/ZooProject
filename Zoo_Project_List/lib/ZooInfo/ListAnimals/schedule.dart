import 'package:Zoo_Project/ZooInfo/ListZooInfo/image.dart';
import 'package:flutter/material.dart';

class mammals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Stack(
        children: [
          Container(
              height: 91,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 245, 245, 245),
              )),
          ListTile(
            title: const Text(
              'Название животного',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'museo',
                  color: Color.fromARGB(255, 52, 32, 31)),
            ),
            subtitle: const Text(
              'Место нахождения',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'museo',
                  color: Color.fromARGB(255, 52, 32, 31)),
            ),
            leading: const Image(
              image: appimages.Rectangle,
            ),
            trailing: const Icon(
              Icons.location_on,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('listinfor');
            },
          ),
          const Positioned(top: 66, left: 92, child: Text('400m ')),
        ],
      ),
    );
  }
}
