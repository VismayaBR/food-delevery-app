import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'finishdelivery.dart';

class Startdev extends StatefulWidget {
  const Startdev({Key? key}) : super(key: key);

  @override
  State<Startdev> createState() => _StartdevState();
}

class _StartdevState extends State<Startdev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View order"),
        centerTitle: true,
      ),
      body:Center(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:"order no*******************cash",hintText: "order no ",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),

                      ),
                      labelText:"address",hintText: "address ",
                    ),
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
                child: Container(
                  width: 100,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      labelText:"order details",hintText: "order details",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:"food items      Qty",hintText: "state",
                    ),
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      labelText:"delivery time",hintText: "delivery time",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Finishdev()));
                      }, child: Text("start"),
                      ),
                    ],
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
