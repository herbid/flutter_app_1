import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget{
  @override
  _SplashScreenPageState createState()=>_SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>{

  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 3);
    return Timer (duration,(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return HomePage();
        }),
      );
    });

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff329cef),
      body: Center(
        child: Image.asset("images/logo.png"),
        widthFactor: 100,
        heightFactor: 100,
      ),
    );
  }
}

