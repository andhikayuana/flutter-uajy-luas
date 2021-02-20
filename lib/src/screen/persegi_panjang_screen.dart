import 'package:flutter/material.dart';

class PersegiPanjangScreen extends StatefulWidget {
  PersegiPanjangScreen({Key key}) : super(key: key);

  @override
  _PersegiPanjangScreenState createState() => _PersegiPanjangScreenState();
}

class _PersegiPanjangScreenState extends State<PersegiPanjangScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang"),
      ),
      body: Center(
        child: Text("Lengkapi Aku"),
      ),
    );
  }
}
