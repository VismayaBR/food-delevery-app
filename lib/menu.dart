import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homelyfood/vieworder.dart';
import 'package:homelyfood/viewprofile.dart';
import 'fooditems.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyAccount",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellowAccent[400],
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    body: ListView(
    children: [
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Card(
         child: ListTile(
            title: Text("Myprofile"),
            // tileColor: Colors.cyan,
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
           onTap: (){
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Viewprofile()));
           },
    ),
       ),
     ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            title: Text("View order"),
            // tileColor: Colors.cyan,
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Vieworder()));
            },
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            title: Text("Track my orders"),
            // tileColor: Colors.cyan,
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            // onTap: (){
            //   Navigator.push(context,MaterialPageRoute(builder: (context)=>Trackorder()));
            // },
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListTile(
            title: Text("Logout"),
            // tileColor: Colors.cyan,
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Food()));
            },
          ),
        ),
      ),
    ],
    ),
    );
  }
}
