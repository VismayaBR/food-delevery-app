import 'package:flutter/material.dart';

class Devstatus extends StatefulWidget {
  const Devstatus({Key? key}) : super(key: key);

  @override
  State<Devstatus> createState() => _DevstatusState();
}

class _DevstatusState extends State<Devstatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Delivery Status",style:TextStyle(fontSize: 15,
      //     fontStyle:FontStyle.italic,
      //     backgroundColor: Colors.green[300],),
      //   ),
        appBar: AppBar(
          title: Text("Delivery Status",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.green[300],
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        // actions: [Icon(Icons.camera_alt_outlined,),
        //   Icon(Icons.search),
        //   Icon(Icons.more_vert),
        // ],
        // leading:Icon(Icons.group_add) ,
      body: SafeArea(
        child:ListView.separated(
          itemBuilder: (ctx,index){
            return ListTile(
              title: Text("cust info $index"),
              subtitle: Text("delivery status $index"),

              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80"),
              ),
              trailing: Text("1$index/03/2023"),
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
