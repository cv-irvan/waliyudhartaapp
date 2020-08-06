import 'package:flutter/material.dart';
import 'package:wali_yudharta/bloc/mhsBloc.dart';
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
            child: Card(
              color: Color(0xffB22222),
              elevation: 10.0,
              shadowColor: Colors.grey,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text('Semester : ' + widget.data.items[i].semester,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    subtitle: Text("IP Semester : " + widget.data.items[i].ips,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal)),
                    // trailing: Text(widget.data.items[i].semester,
                    //     style: TextStyle(
                    //         color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    height: 700,
                    child: ListView.builder(
                      physics: ScrollPhysics(),
                      itemCount: widget.data.items[i].items.length,
                      itemBuilder: (BuildContext context, int a) {
                        return Card(
                          child: ListTile(
                            title: Text(widget.data.items[i].items[a].mkNama),
                            subtitle: Text("Kode MK : " +
                                widget.data.items[i].items[a].mkKode),
                            trailing: Text(
                                widget.data.items[i].items[a].nilaiAngka +
                                    "  " +
                                    "(" +
                                    widget.data.items[i].items[a].nilaiHuruf +
                                    ")"),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
