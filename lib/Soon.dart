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
      body: Center(
        child: Lottie.asset(
          'img/soon.json',
          width: 200,
          height: 200,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
