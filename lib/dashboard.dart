import 'package:flutter/material.dart';
import 'package:islamic_dua/About%20Us.dart';
import 'package:islamic_dua/kafiroun.dart';
import 'package:islamic_dua/ikhlas.dart';
import 'package:islamic_dua/naas.dart';
import 'package:islamic_dua/falak.dart';

void main(){
  runApp(dashboardpage());
}
class dashboardpage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  }

class _HomePageState extends State<dashboardpage> {
  @override
  Widget build(BuildContext context) {
    //var size= MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height:130*.99,
            decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/bismillah.png'),fit: BoxFit.fill,
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
                                            Image.asset('assets/images/kafiroun/kafirun.jpg',height: 100),
                                            Text('सूरा अल काफिरून',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))
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
                                        Image.asset('assets/images/ikhlas/ikhlas.jpg',height: 100),
                                        //SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/3301/3301729.svg',height: 100),
                                        Text('सूरा अल नास',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87))
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
                                      Image.asset('assets/images/falak/falak.jpg',height:100),
                                      //SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/1040/1040216.svg',height: 120),
                                      Text('सूरा अल फलक',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
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
                                        Image.asset('assets/images/naas/naas.jpg',height:100),
                                        ///SvgPicture.network('https://www.flaticon.com/svg/static/icons/svg/1587/1587562.svg',height: 120),
                                        Text('सूरा अल नास',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
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
                                      Image.asset('assets/images/contactus.jpg', height: 120),
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
    ));
  }
}



