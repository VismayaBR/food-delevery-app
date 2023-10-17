import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homelyfood/orderlistdevboy.dart';
import 'package:homelyfood/viewpaymentdevboy.dart';
import 'package:homelyfood/viewreviewsdevboy.dart';

import 'activeorder.dart';
import 'deliveredorderlist.dart';
import 'editpfldevboy.dart';

class Devhome extends StatefulWidget {
  const Devhome({Key? key}) : super(key: key);

  @override
  State<Devhome> createState() => _DevhomeState();
}

class _DevhomeState extends State<Devhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            icon:Icon(Icons.logout),
            color: Colors.black, onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Devhome()));
          },
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentindex,
      //   onTap: (newIndex){
      //     setState(() {
      //       currentindex=newIndex;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //       Icons.home,
      //     ),
      //         label:"home",
      //       backgroundColor: Colors.black,),
      //     BottomNavigationBarItem(icon: Icon(
      //       Icons.currency_rupee_sharp,
      //     ),
      //         label:"pay"),
      //     BottomNavigationBarItem(icon: Icon(
      //       Icons.person,
      //     ),
      //         label:"prof"),
      //   ],
      // ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Devorder()));
                }, child: Text("new orders",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent[400],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Activeord()));
                }, child: Text("active orders",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent[400],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Devlist()));
                }, child: Text("delivered orders",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent[400],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Review()));
                }, child: Text("review",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent[400],
                  ),
                ),
              ),
            ],


    ),
 ),
    );

  }
}
