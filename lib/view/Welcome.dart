import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wali_yudharta/bloc/mhsBloc.dart';
import 'package:wali_yudharta/service/api.dart';
import 'package:wali_yudharta/model/getMhsModel.dart';
import 'package:wali_yudharta/view/Dasboard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var mhsNim = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/login.png'), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                    top: 50, bottom: 8.0, left: 24.0, right: 24.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'MASUKAN NIM',
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(width: 2, style: BorderStyle.none),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                  controller: mhsNim,
                ),
              ),
              SubmitButton(
                title: "Submit",
                onPressed: () {
                  mhsBloc.getMhs(mhsNim.text);
                  mhsBloc.mhs.listen((event) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dasboard(data: event)),
                    );
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubmitButton extends StatefulWidget {
  final String title;
  final Function onPressed;
  SubmitButton({@required this.title, @required this.onPressed});

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new FlatButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: widget.onPressed,
                  child: new Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 10.0,
                    ),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Expanded(
                          child: Text(
                            widget.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
