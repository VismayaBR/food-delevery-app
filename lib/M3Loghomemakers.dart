import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'M3Reghomemakers.dart';
import 'M3startpage.dart';

class Homelog extends StatefulWidget {
  const Homelog({Key? key}) : super(key: key);

  @override
  State<Homelog> createState() => _HomelogState();
}

class _HomelogState extends State<Homelog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green[300],
        centerTitle: true,
      ),
      body:Center(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:150.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText:"Email",hintText: "Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
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
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText:"Password",hintText: "Password",
                    ),
                    obscureText: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Starthome()));
                }, child: Text("Login",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[300],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Don't have a account?")),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Reghome()));
                }, child: Text("register",style: TextStyle(color: Colors.black),),
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
