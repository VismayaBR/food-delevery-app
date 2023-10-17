import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fooditems.dart';

class Cat extends StatefulWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  String? aaa;
  String? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellowAccent[400],
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Text("SELECT THE CATEGORY",style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top:50.0,left:40.0,right:40.0),
                          child: ListTile(
                            title: Text("BREAKFAST"),
                            leading:Radio(value: 'breakfast', groupValue: aaa, onChanged:(brk)
                            {
                              setState(()
                              {
                                aaa=brk;
                              });

                            },
                            ),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> Food()));
                            },
                          ),
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:40.0,right:40.0),
                          child: ListTile(
                            title: Text("LUNCH"),
                            leading:Radio(value: 'lunch', groupValue: aaa, onChanged:(brk)
                            {
                              setState(()
                              {
                                aaa=brk;
                              });
                            }),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> Food()));
                            },
                          ),
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left:40.0,right:40.0),
                          child: ListTile(
                            title: Text("DINNER"),
                            leading:Radio(value: 'dinner', groupValue: aaa, onChanged:(brk)
                            {
                              setState(()
                              {
                                aaa=brk;
                              });
                            }),
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> Food()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
