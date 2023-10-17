import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homelyfood/menu.dart';
import 'package:homelyfood/placeorder.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food items",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellowAccent[400],
        centerTitle: true,
        leading:  Icon(
         color: Colors.black,
        Icons.person,
      ),

        actions: [
          IconButton(
            icon:Icon(Icons.menu),
            color: Colors.black, onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Menu()));
          },
          ),
      ],
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
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Placeorder()));
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
