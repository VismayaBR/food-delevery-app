import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addreview.dart';

class Vieworder extends StatefulWidget {
  const Vieworder({Key? key}) : super(key: key);

  @override
  State<Vieworder> createState() => _VieworderState();
}

class _VieworderState extends State<Vieworder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your orders",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellowAccent[400],
        centerTitle: true,
        leading:Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),

      body:ListView.separated(itemBuilder: (context,index){
        return Card(
          child: ListTile(title:
          Text("food items,${index+1}") ,
            subtitle: Text("list"),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: (){
              print("on tap pressed");
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Addreview()));
            },
          ),
        );
      },
          separatorBuilder: (context,index) {
            return Divider();
          },
          itemCount: 40),
    );
  }
}
