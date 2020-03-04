import 'package:ansor_build/src/screen/beranda/beranda_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ansorBuld',
      theme: ThemeData(

      ),
      home: BerandaPage(),   
    );
  }
}