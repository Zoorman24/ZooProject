import 'package:Zoo_Project/ZooIcons/zoo_icons.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int selectIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        items: [
          const BottomNavigationBarItem(icon: (ZooIcons.house), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(ZooIcons.animals), label: 'Photo'),
          const BottomNavigationBarItem(
              icon: Icon(ZooIcons.camera), label: 'zoo'),
          const BottomNavigationBarItem(icon: Icon(ZooIcons.map), label: 'map'),
          const BottomNavigationBarItem(
            icon: Icon(ZooIcons.profile),
            label: 'profil',
          ),
        ],
        onTap: (index) {},
      ),
      appBar: AppBar(
        title: const Text('Задания'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
        itemBuilder: (context, i) => ListTile(
          title: Text(
            'Название животного',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            'Место нахождение',
            style: theme.textTheme.labelSmall,
          ),
          trailing: Icon(
            Icons.my_location_outlined,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
