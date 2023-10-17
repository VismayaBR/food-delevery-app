import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Devlist extends StatefulWidget {
  const Devlist({Key? key}) : super(key: key);

  @override
  State<Devlist> createState() => _DevlistState();
}

class _DevlistState extends State<Devlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Delivered orders",style:TextStyle(fontSize: 15,
            fontStyle:FontStyle.italic,
            backgroundColor: Colors.blue,),
          ),
          // actions: [Icon(Icons.camera_alt_outlined,),
          //   Icon(Icons.search),
          //   Icon(Icons.more_vert),
          // ],
          // leading:Icon(Icons.group_add) ,

        ),
        body: SafeArea(
            child:ListView.separated(
              itemBuilder: (ctx,index){
                return ListTile(
                  title: Text("food $index"),
                  subtitle: Text("message $index"),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80"),
                  ),
                  trailing: Text("1$index:00 AM"),
                );


              },
              separatorBuilder: (ctx,index){
                return Divider();
              },
              itemCount: 20,),
        ),
    );
  }
}
