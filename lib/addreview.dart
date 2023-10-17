import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Addreview extends StatefulWidget {
  const Addreview({Key? key}) : super(key: key);

  @override
  State<Addreview> createState() => _AddreviewState();
}

class _AddreviewState extends State<Addreview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD REVIEW",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellowAccent[400],
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(width: 5,color: Colors.black87,),
                    borderRadius: BorderRadius.circular(10,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Name: foodname"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("price:300"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("oty:6"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("amount:1800"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    maxLength: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText:"review",hintText: "review",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("*******"),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  //if done clicked update
                }, child: Text("ADD",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent[400],
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
