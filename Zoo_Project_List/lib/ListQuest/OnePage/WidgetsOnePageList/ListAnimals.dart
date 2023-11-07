import 'package:flutter/material.dart';

class Animals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Stack(
        children: [
          Container(
              height: 62,
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
            leading: const Icon(
              Icons.check_box_outline_blank_outlined,
              size: 35,
            ),
            trailing: const Icon(
              Icons.location_on,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/Quest');
            },
          ),
          const Positioned(top: 22, left: 274, child: Text('Points')),
        ],
      ),
    );
  }
}