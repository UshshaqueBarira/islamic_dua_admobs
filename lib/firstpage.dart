import 'dart:async';

import 'package:async/async.dart';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_dua/dashboard.dart';

class Quran extends StatefulWidget {
  @override
  quran_dua createState() => quran_dua();
}

class quran_dua extends State<Quran> {
  @override
  void initState() {
    super.initState();
      }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ISLAMIC DUA",
        home: Scaffold(
            appBar: AppBar(
              title: Text('ISLAMIC DUA- 4 QUL'),
              centerTitle: true,
              backgroundColor: Colors.amber[600],
            ),
            body: Center(
              child: new Container(
                //width: 448.0,
                //height:900.0,
                child: Image.asset('assets/images/homescreen.jpg'),
                color: Colors.white70,
                alignment: Alignment.center,
              ),

            )

        )
    );
  }
}