import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addfood extends StatefulWidget {
  const Addfood({Key? key}) : super(key: key);

  @override
  State<Addfood> createState() => _AddfoodState();
}

class _AddfoodState extends State<Addfood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADD FOOD ITEMS",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green[300],
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
                      border: OutlineInputBorder(


                      ),
                      labelText:"Food Name",hintText: "Food Name ",
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
                    decoration: InputDecoration(
                      border: OutlineInputBorder(


                      ),
                      labelText:"Category",hintText: "Category",
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
                    decoration: InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText:"Price",hintText: "Price ",
                    ),
                    keyboardType: TextInputType.number,
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
                      labelText:"Photo",hintText: "Photo",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText:"description",hintText: "description",
                    ),
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>Starthome()));
                }, child: Text("submit",style: TextStyle(color: Colors.black),),
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
