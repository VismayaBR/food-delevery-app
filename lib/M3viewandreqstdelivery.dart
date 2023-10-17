import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'M3requestdeliveryboy.dart';

class Assigndev extends StatefulWidget {
  const Assigndev({Key? key}) : super(key: key);

  @override
  State<Assigndev> createState() => _AssigndevState();
}

class _AssigndevState extends State<Assigndev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assign delivery",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green[300],
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        // actions: [
        //   IconButton(
        //     icon:Icon(Icons.edit),
        //     color: Colors.black, onPressed: () {
        //     // Navigator.push(context,MaterialPageRoute(builder: (context)=>Pfedit()));
        //   },
        //   ),
        // ],
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Image(
                  height: 200,
                  width: 200,
                  image:NetworkImage("https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80")
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Name: aaa"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Qty:4*29"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("city:kozhikode"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("price:156"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("cust info:address location etc"),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Rqstdeli()));
                }, child: Text("Assign delivery",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[300],
                  ),
                ),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
