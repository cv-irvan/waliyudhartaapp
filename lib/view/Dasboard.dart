import 'package:flutter/material.dart';
import 'package:wali_yudharta/bloc/mhsBloc.dart';
import 'package:wali_yudharta/model/getMhsModel.dart';
import 'package:wali_yudharta/view/Soon.dart';
import 'package:wali_yudharta/view/Welcome.dart';
import 'package:wali_yudharta/view/lihatnilai.dart';
import 'package:wali_yudharta/view/Notification.dart';

class Dasboard extends StatefulWidget {
  Dasboard({this.data});
  GetMhsModel data;
  @override
  _DasboardState createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffB22222),
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('img/irvan.png'),
                ),
                accountName: Text(
                  widget.data.items[0].namaLengkap,
                  style: TextStyle(fontSize: 15.0),
                ),
                accountEmail: Text(widget.data.mhsNim),
              ),
              ListMenu(Icons.home, 'Dasboard', () {}),
              ListMenu(Icons.notifications, 'Notifications', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pemberitahuan()),
                );
              }),
              ListMenu(Icons.assignment, 'Lihat Nilai', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LihatNilai(data: widget.data)),
                );
              }),
              ListMenu(Icons.credit_card, 'Lihat Pembayaran', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Soon()),
                );
              }),
              ListMenu(Icons.event, 'Lihat Jadwal', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Soon()),
                );
              }),
              ListMenu(Icons.exit_to_app, 'Log Out', () {
                Navigator.pushReplacementNamed(context, '/welcome');
              }),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Material(
                elevation: 15.0,
                child: Container(
                  color: Color(0xffB22222),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Material(
                          elevation: 15.0,
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('img/irvan.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(widget.data.items[0].namaLengkap,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(widget.data.mhsNim,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                        Text(widget.data.items[0].jurusan,
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Color(0xffE9E9E9),
                padding: EdgeInsets.all(20.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    MenuUtama(Icons.assignment, 'Lihat Nilai', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LihatNilai(data: widget.data)),
                      );
                    }),
                    MenuUtama(Icons.credit_card, 'Lihat Pembayaran', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Soon()),
                      );
                    }),
                    MenuUtama(Icons.event, 'Lihat Jadwal', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Soon()),
                      );
                    }),
                    MenuUtama(Icons.exit_to_app, 'Log Out', () {
                      Navigator.pushReplacementNamed(context, '/welcome');
                    }),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class ListMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  ListMenu(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.redAccent,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  icon,
                  color: Color(0xff4D4D4D),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color(0xff4D4D4D),
                    ),
                  ),
                )
              ],
            ),
            Icon(
              Icons.arrow_right,
              color: Color(0xff4D4D4D),
            )
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  MenuUtama(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        color: Colors.white,
        elevation: 10.0,
        borderRadius: BorderRadius.circular(18.0),
        shadowColor: Colors.grey,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(18.0),
          splashColor: Colors.redAccent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 65,
                  color: Color(0xffB22222),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 15.0, color: Color(0xff4D4D4D)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
