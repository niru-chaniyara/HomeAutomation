import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'LoginScreen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/LoginScreen': (BuildContext context) => new LoginScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/splash_bg1.png"),
                      fit: BoxFit.cover,
                    )
                ),
              ),


              Center(
                child: Container(

                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Container(

                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/splash_home.png")

                            )
                        ),
                      ),
                      Text("Happ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                      Text("Smart Home",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              )
            ],
          ),),
    ),


    );
  }
}
