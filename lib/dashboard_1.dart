import 'package:flutter/material.dart';
import 'package:islamic_dua/About%20Us.dart';
import 'package:islamic_dua/kafiroun.dart';
import 'package:islamic_dua/ikhlas.dart';
import 'package:islamic_dua/naas.dart';
import 'package:islamic_dua/falak.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Material MyItems(IconData icon,String heading,int color){
    return Material(
      color: Colors.white70,
      elevation: 14.0,
      shadowColor: Color(color),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Padding(
                      padding: const EdgeInsets.all(8.0), 
                      child:Text(heading,style: TextStyle(
                          color: Colors.black,fontSize: 20.0
                      )
                      )
                  ),
                  Material(
                    color: new Color(0xFFFFC107),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose one dua to read:',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
          crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
        children: <Widget>[
          MyItems(Icons.call_rounded,"Contact Us",0xffed622b),
          MyItems(Icons.my_library_books_rounded,"Surah-Al-Kafiroun",0xff26cb3c),
          MyItems(Icons.description,"Surah-al-Kahaf",0xffff3266),
          MyItems(Icons.access_alarm_outlined,"Surah-al-falak",0xff3399fe),
          MyItems(Icons.account_balance_wallet,"Surah-al-Naas",0xff26cb3c),

        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0)
        ],
      )
    );
  }
}