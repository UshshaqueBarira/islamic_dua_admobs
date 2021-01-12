import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_dua/dashboard.dart';
import 'dart:async';

import 'package:islamic_dua/kafiroun.dart';

//import 'package:admob_flutter/admob_flutter.dart';

void main() {
  //Admob.initialize();
  runApp(Quran());
}
/*
getAppId() {
  if (Platform.isAndroid){
    return ('ca-app-pub-5854106407713919~1956345238');
    }
  else if(Platform.isIOS){
    return('ca-app-pub-5854106407713919~1956345238');
  }
    return null;
  }

String getBannerAdUnitId() {
  if (Platform.isIOS) {
    return 'ca-app-pub-5854106407713919/3529830092';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-5854106407713919/3529830092';
  }
  return null;
}
*/
class Quran extends StatefulWidget {
  @override
  quran_dua createState() => quran_dua();
}

class quran_dua extends State<Quran> {
//decide the banner size
  //AdmobBannerSize bannerSize;
  @override
  void initState() {
    super.initState();
    //bannerSize = AdmobBannerSize.BANNER;
    Timer(Duration(seconds: 4), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>kafiroun())));
  }

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
            /*child: new Container(
            child: ClipRRect( // rounded corners ad.
              borderRadius: BorderRadius.circular(40.0),
              child: AdmobBanner(
                adUnitId: getBannerAdUnitId(),
                adSize: AdmobBannerSize.LEADERBOARD,
              ),
            )*/
            )

      )
    );
  }
}
