import 'package:flutter/material.dart';
import 'package:wali_yudharta/Dasboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wali Yudharta',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Dasboard(),
    );
  }
}

