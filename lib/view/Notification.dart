import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Pemberitahuan extends StatefulWidget {
  @override
  _PemberitahuanState createState() => _PemberitahuanState();
}

class _PemberitahuanState extends State<Pemberitahuan> {
  String title = "Pemberitahuan";
  String konten = "0";
  String url = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    OneSignal.shared
        .setNotificationReceivedHandler((OSNotification notification) {
      // will be called whenever a notification is received
      setState(() {
        title = notification.payload.title;
        konten = notification.payload.body;
        url = notification.payload.bigPicture;
      });
    });

    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      // will be called whenever a notification is opened/button pressed.
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Pemberitahuan()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: Center(
        child: Column(
          children: [
            // (url != "") ? Container(
            //   height: 274,
            //   width: 700,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(image: NetworkImage(url))),
            // ) : SizedBox(),
            Text(title),
            SizedBox(
              height: 20,
            ),
            Text(konten),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
