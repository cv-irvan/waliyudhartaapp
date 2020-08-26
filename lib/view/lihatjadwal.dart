import 'package:flutter/material.dart';

class LihatJadwal extends StatefulWidget {
  @override
  _LihatJadwalState createState() => _LihatJadwalState();
}

class _LihatJadwalState extends State<LihatJadwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lihat Jadwal"),
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
                          width: 60,
                          child: Center(
                              child: Text(
                            "Hari ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                      Container(
                          height: 50,
                          width: 60,
                          child: Center(
                              child: Text(
                            "Jam ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                      Container(
                          height: 50,
                          width: 108,
                          child: Center(
                              child: Text(
                            "Nama MK ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))),
                      Container(
                          height: 50,
                          width: 108,
                          child: Center(
                              child: Text(
                            "Dosen",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )))
                    ],
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 50, width: 57, child: Text("senin ")),
                          Container(
                              height: 50, width: 58, child: Text("10.00 ")),
                          Container(
                              height: 50,
                              width: 106,
                              child: Text("dasar pemrograman")),
                          Container(
                              height: 50,
                              width: 107,
                              child: Text("cahya bagus Sanjaya"))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 50, width: 57, child: Text("senin ")),
                          Container(
                              height: 50, width: 58, child: Text("13.00 ")),
                          Container(
                              height: 50,
                              width: 106,
                              child: Text("algoritma & strukturdata")),
                          Container(
                              height: 50, width: 107, child: Text("Moch Lutfi"))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 50, width: 57, child: Text("selasa ")),
                          Container(
                              height: 50, width: 58, child: Text("80.00 ")),
                          Container(
                              height: 50,
                              width: 106,
                              child: Text("pemrograman mobile")),
                          Container(
                              height: 50,
                              width: 107,
                              child: Text("cahya bagus Sanjaya"))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 50, width: 57, child: Text("selasa ")),
                          Container(
                              height: 50, width: 58, child: Text("10.00 ")),
                          Container(
                              height: 50,
                              width: 106,
                              child: Text("datamining")),
                          Container(
                              height: 50,
                              width: 107,
                              child: Text("imron rosadi"))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 50, width: 57, child: Text("senin ")),
                          Container(
                              height: 50, width: 58, child: Text("13.30 ")),
                          Container(
                              height: 50,
                              width: 106,
                              child: Text("desain analisis sistem")),
                          Container(
                              height: 50, width: 107, child: Text("walidini"))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
