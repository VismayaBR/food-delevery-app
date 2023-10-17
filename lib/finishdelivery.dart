import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'activeorder.dart';

class Finishdev extends StatefulWidget {
  const Finishdev({Key? key}) : super(key: key);

  @override
  State<Finishdev> createState() => _FinishdevState();
}

class _FinishdevState extends State<Finishdev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery"),
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("map"),
            Padding(
              padding: const EdgeInsets.only(left:100.0,top: 350.0,right: 100.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Activeord()));
              }, child: Text("finish",style:TextStyle(fontWeight: FontWeight.bold),),
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
