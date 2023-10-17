import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'log.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:100.0,top: 400.0,right: 400.0,bottom: 0.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Log()));
              }, child: Text("GET STATRED",style:TextStyle(fontWeight: FontWeight.bold),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
