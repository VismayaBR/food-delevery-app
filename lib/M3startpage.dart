import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homelyfood/M3homemakerhome.dart';

import 'M3home(nav).dart';

class Starthome extends StatefulWidget {
  const Starthome({Key? key}) : super(key: key);

  @override
  State<Starthome> createState() => _StarthomeState();
}

class _StarthomeState extends State<Starthome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:100.0,top: 350.0,right: 100.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Homeee()));
              }, child: Text("GET STATRED",style:TextStyle(fontWeight: FontWeight.bold),),
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
