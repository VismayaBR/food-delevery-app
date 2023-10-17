import 'package:flutter/material.dart';

import 'M3viewaddfooditems.dart';

class Updatefood extends StatefulWidget {
  const Updatefood({Key? key}) : super(key: key);

  @override
  State<Updatefood> createState() => _UpdatefoodState();
}

class _UpdatefoodState extends State<Updatefood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.green[300],
        centerTitle: true,
        leading:Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),


      ),
      body:Center(
        child: Center(
          child: ListView(
            children: [
              Image(
                  height: 200,
                  width: 200,
                  image:NetworkImage("https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80")
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,top:10.0),
                child: Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(


                      ),
                      labelText:"foodName",hintText: "foodName ",
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
                      labelText:"description",hintText: "description ",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:100.0,right: 100.0,top: 8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ViewFood()));
                  //if done clicked update
                }, child: Text("Done",style: TextStyle(color: Colors.black),),
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
