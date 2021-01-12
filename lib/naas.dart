import 'package:flutter/material.dart';

void main() {
  runApp(naas());
}

class naas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// setup a stateful widget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Design of the application
      appBar: AppBar(
          title:Text("Surah-al-Naas"),
          backgroundColor:Colors.green
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Image.network(src)
                child: Image.network("https://muhammadisite.com/wp-content/uploads/2016/09/114-Surah-Naas.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://i.ytimg.com/vi/a2kcguFWqTE/maxresdefault.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://2.bp.blogspot.com/-sc4vLK8bl1k/WS7D5iR2xQI/AAAAAAAAANs/pWHbIzcplyoyTS-s8kPzI3GRAvQKSNufACLcB/s1600/Slide1.JPG"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("http://www.iqrasense.com/wp-content/uploads/Alhamdulillah.jpg",height: 120.0,),
              )
            ]
        ),
      ),
    );
  }
}
