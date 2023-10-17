import 'package:flutter/material.dart';
import 'package:homelyfood/M2deliveryhome.dart';
import 'package:homelyfood/acceptorder.dart';
import 'package:homelyfood/deliveryboylog.dart';
import 'package:homelyfood/select.dart';
import 'package:homelyfood/start.dart';
import 'package:homelyfood/viewpaymentdevboy.dart';
import 'package:homelyfood/viewprofile.dart';
import 'package:homelyfood/viewreviewsdevboy.dart';

import 'M3Loghomemakers.dart';
import 'M3home(nav).dart';
import 'M3homemakerhome.dart';
import 'activeorder.dart';
import 'buy.dart';
import 'deliveryboyregM2.dart';
import 'editpfldevboy.dart';
import 'editprofileuser.dart';
import 'fooditems.dart';
import 'homedeliveryboy.dart';
import 'log.dart';
import 'menu.dart';
import 'orderlistdevboy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}



