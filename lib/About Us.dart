import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

void main() {
  runApp(About_us());
}

class About_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ContactUs(
          logo: AssetImage('assets/panda.jpg'),
          email: 'bsdappdev@gmail.com',
          companyName: 'BSD Application',
          phoneNumber: '+91-809028****',
          linkedinURL: 'www.linkedin.com/in/bsdApplicationDeveloper',
          tagLine: 'Application Developer',
          instagram: 'Yet to connect',
        ),
      ),
    );
  }
}
