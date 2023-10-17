import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homelyfood/viewpaymentdevboy.dart';

import 'M2deliveryhome.dart';
import 'editpfldevboy.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex=0;
  final pages=[
    Devhome(),
    Viewpay(),
    Devedit(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home",style: TextStyle(color: Colors.white),),
      //   backgroundColor: Colors.black,
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       icon:Icon(Icons.logout),
      //       color: Colors.black, onPressed: () {
      //       Navigator.push(context,MaterialPageRoute(builder: (context)=>Devhome()));
      //     },
      //     ),
      //   ],
      // ),
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
            label:"home",
            backgroundColor: Colors.black,),
          BottomNavigationBarItem(icon: Icon(
            Icons.currency_rupee_sharp,
          ),
              label:"pay"),
          BottomNavigationBarItem(icon: Icon(
            Icons.person,
          ),
              label:"prof"),
        ],
      ),
    );
  }
}
