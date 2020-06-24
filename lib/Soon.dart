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
        children: <Widget>[
          Center(
            child: Container(
              child: Lottie.asset(
                'img/soon.json',
                width: 300,
                height: 300,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Text('Coming', style: TextStyle(fontSize: 30, color: Colors.black)),
              Text('Soon', style: TextStyle(fontSize: 30, color: Colors.red)),
            ],
          ),
        ],
      ),
    );
  }
}
