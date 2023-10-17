import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'M3deliverystatus.dart';
import 'M3viewaddfooditems.dart';
import 'M3viewcustorder.dart';
import 'M3viewreview.dart';
import 'addfooditems.dart';

class Omehome extends StatefulWidget {
  const Omehome({Key? key}) : super(key: key);

  @override
  State<Omehome> createState() => _OmehomeState();
}

class _OmehomeState extends State<Omehome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green[300],
        centerTitle: true,
        actions: [
          IconButton(
            icon:Icon(Icons.logout),
            color: Colors.black, onPressed: () {
            // Navigator.push(context,MaterialPageRoute(builder: (context)=>Devhome()));
          },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Addfood()));
              }, child: Text("Add food items",style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ViewFood()));
              }, child: Text("view food items",style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Custorder()));
              }, child: Text("view order",style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Devstatus()));
              }, child: Text("view delivery status",style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Homereview()));
              }, child: Text("Review",style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[300],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
