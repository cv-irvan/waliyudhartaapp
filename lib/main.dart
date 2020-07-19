import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'dart:async';

import 'package:wali_yudharta/view/Welcome.dart';
import 'package:wali_yudharta/view/Notification.dart';
import 'package:wali_yudharta/view/Dasboard.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  OneSignal.shared.init("5f393fa0-17e0-4450-8c50-e70ee21a4190", iOSSettings: {
    OSiOSSettings.autoPrompt: false,
    OSiOSSettings.inAppLaunchUrl: false
  });
  OneSignal.shared
      .setInFocusDisplayType(OSNotificationDisplayType.notification);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wali Yudharta',
      theme: ThemeData(
        primaryColor: Color(0xffB22222),
      ),
      home: Login(),
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
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
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
          image: DecorationImage(
              image: AssetImage('img/splashscreen.png'), fit: BoxFit.cover)),
    ));
  }
}
