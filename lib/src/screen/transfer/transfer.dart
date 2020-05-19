import 'package:ansor_build/src/screen/beranda/landing_screen.dart';
import 'package:ansor_build/src/screen/transfer/antarbank.dart';
import 'package:ansor_build/src/screen/transfer/kesesama.dart';
import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    Widget topBanner = new Column(children: <Widget>[
      Container(
        width: double.infinity,
        color: Colors.grey[200],
        padding: new EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        child: Container(
          width: double.infinity,
          height: 75.0,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (__) => new Kesesama()));
                        },
                        child: Container(
                          width: 150.0,
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Column(children: <Widget>[
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Container(
                                  width: 50.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                      border: Border.all(
                                          color: Colors.grey[300], width: 1)),
                                ),
                              ),
                            ),
                            Text("Ke Sesama Un1ty",
                                style: new TextStyle(
                                    fontSize: 10.0, color: Colors.black))
                          ]),
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (__) => new AntarBank()));
                      },
                      child: Container(
                        width: 150.0,
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 15.0, right: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Column(children: <Widget>[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Container(
                                width: 50.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    shape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    border: Border.all(
                                        color: Colors.grey[300], width: 1)),
                              ),
                            ),
                          ),
                          Text("Ke Rekening Bank",
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.black))
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);

    Widget middleSection = Expanded(
      child: new Container(
          color: Colors.white,
          child: SingleChildScrollView(
            padding: new EdgeInsets.all(12.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text("Transfer Terakhir",
                    style: new TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold)),
                Container(height: 15),
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 12.0),
                    child: Image.asset("lib/src/assets/BPJS.png"),
                  ),
                  Container(
                    child: Text("nama" + "\n" + "bank",
                        style:
                            new TextStyle(color: Colors.black, fontSize: 12.0)),
                  ),
                ]),
                Container(height: 5),
                Divider(
                  height: 12,
                  color: Colors.black26,
                ),
              ],
            ),
          )),
    );

    Widget body = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[topBanner, middleSection],
    );

    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (__) => new LandingPage()));
              }),
          title: Text(
            "Trasfer",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: Padding(
        padding: new EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        child: body,
      ),
    );
  }
}