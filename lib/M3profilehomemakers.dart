import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edithomemakerprf.dart';

class HomeProfile extends StatefulWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  State<HomeProfile> createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My profile",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green[300],
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.edit),
            color: Colors.black, onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Prfhome()));
          },
          ),
        ],
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
                child: Text("address:abcd"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("city:kozhikode"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("state:kerala"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Pin:898646767"),
              ),
              // ElevatedButton(onPressed: (){
              //   Navigator.push(context,MaterialPageRoute(builder: (context)=>Pfedit()));
              // }, child: Text("edit"))

            ],

          ),
        ),
      ),
    );
  }
}
