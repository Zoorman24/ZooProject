import 'package:Zoo_Project/image/image.dart';
import 'package:flutter/material.dart';

@override
class ticketlist extends StatefulWidget {
  const ticketlist({super.key});
  @override
  State<ticketlist> createState() => _ticketlist();
}

class _ticketlist extends State<ticketlist>
    with SingleTickerProviderStateMixin {
  List<Tab> TicketList = <Tab>[
    Tab(
      text: 'Билеты на день',
    ),
    Tab(
      text: 'Билетыdsadsa на день',
    ),
    Tab(
      text: 'Билеты daddна день',
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: TicketList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                    'Билеты',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'museo700',
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              DefaultTabController(
                length: TicketList.length,
                child: TabBar(tabs: [
                  Tab(
                    text: 'Билеты на день',
                  ),
                  Tab(
                    text: 'Специальные',
                  ),
                  Tab(
                    text: 'Экспресс',
                  ),
                ]),
              ),
              Expanded(
                  child: TabBarView(
                      controller: _tabController, children: [Text('home')]))
            ],
          ),
        ),
      ),
    );
  }
}
