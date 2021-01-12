import 'package:flutter/material.dart';

void main() {
  runApp(ikhlas());
}

class ikhlas extends StatelessWidget {
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
          title:Text("Surah-al-Ikhlas"),
          backgroundColor:Colors.green
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Image.network(src)
                child: Image.network("https://quransheikhcom.b-cdn.net/wp-content/uploads/2018/12/surah-al-ikhlas.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://i.ytimg.com/vi/91iaUclOIbQ/maxresdefault.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://hindiquran.in/wp-content/uploads/2019/08/112-Surah-Ikhlas-in-Hindi-Qul-Allahu-Ahad-Surah.jpg"),
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
