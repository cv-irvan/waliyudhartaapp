import 'package:flutter/material.dart';
import 'package:wali_yudharta/model/getMhsModel.dart';

class LihatAkses extends StatefulWidget {
  LihatAkses({this.data});
  GetMhsModel data;
  @override
  _LihatAksesState createState() => _LihatAksesState();
}

class _LihatAksesState extends State<LihatAkses> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.data.access.length,
      itemBuilder: (BuildContext context, int z) {
        return Card(
          child: ListTile(
            title: Text(widget.data.access[z].semester),
          ),
        );
      },
    );
  }
}
