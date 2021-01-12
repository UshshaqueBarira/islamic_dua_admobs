import 'package:flutter/material.dart';

void main() {
  runApp(falak());
}

class falak extends StatelessWidget {
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
          title:Text("Surah-al-Falaq"),
          backgroundColor:Colors.green
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Image.network(src)
                child: Image.network("http://www.iqrasense.com/wp-content/uploads/Surah-Al-Falaq-604.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://s-media-cache-ak0.pinimg.com/originals/cd/bc/b4/cdbcb4c9e46dcdfe6b6f722bd1c687a0.jpg"),
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
