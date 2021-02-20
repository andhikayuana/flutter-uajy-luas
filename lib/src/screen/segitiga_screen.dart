import 'package:flutter/material.dart';

class SegitigaScreen extends StatefulWidget {
  SegitigaScreen({Key key}) : super(key: key);

  @override
  _SegitigaScreenState createState() => _SegitigaScreenState();
}

class _SegitigaScreenState extends State<SegitigaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga"),
      ),
      body: Center(
        child: Text("Lengkapi Aku"),
      ),
    );
  }
}
