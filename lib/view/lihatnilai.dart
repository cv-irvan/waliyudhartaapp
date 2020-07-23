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
          Text(widget.data.items[i].semester);
        },
      ),
    );
  }
}
