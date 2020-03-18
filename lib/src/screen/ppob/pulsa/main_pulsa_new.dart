import 'package:ansor_build/src/screen/component/iklan_slide.dart';
import 'package:ansor_build/src/screen/ppob/pulsa/pascabayar/pulsa_screen_pasca.dart';
import 'package:ansor_build/src/screen/ppob/pulsa/prabayar/pulsa_screen.dart';
import 'package:flutter/material.dart';

class MainPulsa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              leading: Icon(Icons.arrow_back_ios),
              elevation: 0.2,
              backgroundColor: Colors.white,
              title: Text(
                'Pulsa',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Stack(
              fit: StackFit.expand,
              overflow: Overflow.clip,
              children: <Widget>[
                Container(
                  color: Colors.white,
                ),
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 220,
                          color: Colors.white,
                        ),
                        Positioned(
                          top: 16,
                          left: 0,
                          right: 0,
                          bottom: 16,
                          child: Container(
                            height: 150,
                            child: CarouselWithIndicator(),
                          ),
                        )
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(top: 210, left: 16.0, right: 16.0),
                  child: Scaffold(
                    resizeToAvoidBottomPadding: false,
                    appBar: AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      bottom: PreferredSize(
                        preferredSize: Size(0.5, 0.5),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 7.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            border: Border.all(
                              width: 1,
                              color: Colors.white
                            ),
                            borderRadius: new BorderRadius.circular(6.0),
                          ),
                          child: TabBar(
                            labelColor: Colors.green,
                            indicatorColor: Colors.green,
                            tabs: [
                              Container(
                                child: Tab(text: 'Prabayar'),
                              ),
                              Container(
                                child: Tab(text: 'Pascabayar'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    body: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        SingleChildScrollView(child: PulsaPage()),
                        SingleChildScrollView(child: PulsaPascaPage()),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
