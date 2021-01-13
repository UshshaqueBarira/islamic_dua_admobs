import 'package:flutter/material.dart';
import 'package:islamic_dua/About%20Us.dart';
import 'package:islamic_dua/kafiroun.dart';
import 'package:islamic_dua/ikhlas.dart';
import 'package:islamic_dua/naas.dart';
import 'package:islamic_dua/falak.dart';

void main(){
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  }

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height:150*.30,
            decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomLeft,
                  image: AssetImage('http://2.bp.blogspot.com/-RvFsuLcG2n4/UF4s9ZfteKI/AAAAAAAACVM/MHz9xj6HKjY/s1600/303676_367655289976365_1322647588_n.jpg'),fit: BoxFit.fill,
                )
            ),

          ),
          SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  children:<Widget> [
                    Container(
                      height: 100.0,
                      child: Row(
                        children:<Widget> [
                          Center(
                            child: SizedBox(
                              width: 90.0,
                            ),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child:GridView.count(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          primary: false,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Card(
                                child: new InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>kafiroun()));
                                    },
                                    child: Container(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset('',height: 100),
                                            Text('Surah-al-Kafiroun',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))
                                          ]
                                      ),
                                    )
                                ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Card(
                                child: new InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ikhlas()));
                                  },
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        //SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/3301/3301729.svg',height: 100),
                                        Text('Ikhlas',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))
                                      ]
                                  ),
                                ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Card(
                                child: new InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>falak()));
                                  },child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/1040/1040216.svg',height: 120),
                                      Text('Falak',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                    ]
                                ),
                                ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),

                              child: Card(
                                child:new InkWell(
                                  onTap:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>naas()));
                                  },
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        ///SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/1587/1587562.svg',height: 120),
                                        Text('Naas',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                      ]
                                  ),
                                ) ,

                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Card(child:new InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>About_us()));
                                },
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset('', height: 120),
                                      Text('Contact Us',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
                                    ]
                                ),
                              ),
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
                                ),
                                elevation: 5.0,
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}



