import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'M3homemakerhome.dart';
import 'M3homepayments.dart';
import 'M3profilehomemakers.dart';

class Homeee extends StatefulWidget {
  const Homeee({Key? key}) : super(key: key);

  @override
  State<Homeee> createState() => _HomeeeState();
}

class _HomeeeState extends State<Homeee> {
  int currentindex=0;
  final pages=[
    Omehome(),
    Payhome(),
    HomeProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentindex,
        onTap: (newIndex){
          setState(() {
            currentindex=newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label:"Home",
            backgroundColor: Colors.black,),
          BottomNavigationBarItem(icon: Icon(
            Icons.currency_rupee_sharp,
          ),
              label:"payments"),
          BottomNavigationBarItem(icon: Icon(
            Icons.person,
          ),
              label:"profile"),
        ],
      ),

    );
  }
}
