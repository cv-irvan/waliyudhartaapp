import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Soon extends StatefulWidget {
  @override
  _SoonState createState() => _SoonState();
}

class _SoonState extends State<Soon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child: Lottie.asset(
                'img/soon.json',
                width: 350,
                height: 350,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Coming', style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w700)),
                Text('Soon', style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.w800)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
