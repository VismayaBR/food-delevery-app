import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Viewpay extends StatefulWidget {
  const Viewpay({Key? key}) : super(key: key);

  @override
  State<Viewpay> createState() => _ViewpayState();
}

class _ViewpayState extends State<Viewpay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellowAccent[400],
        centerTitle: true,
      ),

      body:ListView.separated(itemBuilder: (context,index){
        return Card(
          child: ListTile(title:
          Text("Amount ,${index+1}") ,
            subtitle: Text("100"),
            // trailing: Icon(
            //   Icons.arrow_forward_ios,
            // ),
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
