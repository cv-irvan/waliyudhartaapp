import 'package:flutter/material.dart';

class LihatPembayaran extends StatefulWidget {
  @override
  _LihatPembayaranState createState() => _LihatPembayaranState();
}

class _LihatPembayaranState extends State<LihatPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History Pembayaran"),
      ),
      body: ListView(
        children: [
          Card(
            elevation: 10.0,
            shadowColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 50,
                          width: 85,
                          child: Center(
                              child: Text(
                            "tanggal",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                      Container(
                          height: 50,
                          width: 125,
                          child: Center(
                              child: Text(
                            "Keterangan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                      Container(
                          height: 50,
                          width: 125,
                          child: Center(
                              child: Text(
                            "Nominal",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )))
                    ],
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 81,
                            child: Center(child: Text("01-02-2020")),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("biaya heregistrasi"),
                                Text("semester 3"),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 122,
                            child: Center(child: Text("Rp. 250.000,00")),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 81,
                            child: Center(child: Text("05-02-2020")),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("biaya SPP"),
                                Text("semester 3"),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 122,
                            child: Center(child: Text("Rp. 1.500.000,00")),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 81,
                            child: Center(child: Text("05-05-2020")),
                          ),
                          Container(
                            height: 50,
                            width: 125,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("biaya SPP"),
                                Text("semester 3"),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 122,
                            child: Center(child: Text("Rp. 1.500.000,00")),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
