import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_dua/dashboard.dart';
//import 'package:islamic_dua/firstpage.dart';

void main() {
    runApp(MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.lightBlue[200], accentColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: new dashboardpage()
  )
  );
}


