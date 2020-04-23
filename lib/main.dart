import 'package:flutter/material.dart';
import 'package:wali_yudharta/Dasboard.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wali Yudharta',
      theme: ThemeData(
        primaryColor: Color(0xffB22222),
      ),
      home: Dasboard(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Dasboard(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('img/Splashscreen.png'),fit: BoxFit.cover)
        ),
      )
    );
  }
}