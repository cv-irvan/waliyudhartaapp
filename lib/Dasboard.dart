import 'package:flutter/material.dart';
import 'package:wali_yudharta/Soon.dart';

class Dasboard extends StatefulWidget {
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
                  'Irvan',
                  style: TextStyle(fontSize: 20.0),
                ),
                accountEmail: Text('201669040001'),
              ),
              ListMenu(Icons.home, 'Dasboard', () => {}),
              ListMenu(Icons.assignment, 'Lihat Nilai', () => {}),
              ListMenu(Icons.credit_card, 'Lihat Pembayaran', () => {}),
              ListMenu(Icons.event, 'Lihat Jadwal', () => {}),
              ListMenu(Icons.exit_to_app, 'Log Out', () => {}),
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
                          child: Text('IRVAN',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('201669040001',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                        Text('Informatika',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
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
                    MenuUtama(Icons.assignment, 'Lihat Nilai', () => Soon()),
                    MenuUtama(Icons.credit_card, 'Lihat Pembayaran', () => Soon()),
                    MenuUtama(Icons.event, 'Lihat Jadwal', () => Soon()),
                    MenuUtama(Icons.exit_to_app, 'Log Out', () => Soon()),
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
                    style: TextStyle(fontSize: 17.0, color: Color(0xff4D4D4D)),
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
                  size: 75,
                  color: Color(0xffB22222),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 17.0, color: Color(0xff4D4D4D)),
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
