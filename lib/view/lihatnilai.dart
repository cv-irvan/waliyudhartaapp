import 'package:flutter/material.dart';
import 'package:wali_yudharta/model/getMhsModel.dart';

class LihatNilai extends StatefulWidget {
  LihatNilai({this.data});
  GetMhsModel data;

  @override
  _LihatNilaiState createState() => _LihatNilaiState();
}

class _LihatNilaiState extends State<LihatNilai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lihat Nilai"),
      ),
      body: ListView.builder(
        itemCount: widget.data.items.length,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Material(
              color: Colors.white,
              elevation: 10.0,
              borderRadius: BorderRadius.circular(18.0),
              shadowColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Semester : "),
                        Text(widget.data.items[i].semester),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
