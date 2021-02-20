import 'package:flutter/material.dart';
import 'package:flutter_uajy_coba/src/screen/persegi_panjang_screen.dart';
import 'package:flutter_uajy_coba/src/screen/persegi_screen.dart';
import 'package:flutter_uajy_coba/src/screen/segitiga_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mengitung Luas Bangun Datar"),
      ),
      body: Center(
        child: Column(
          children: [
            buildButtonBangunDatar(
              context: context,
              screen: PersegiPanjangScreen(),
              label: "Persegi Panjang",
            ),
            buildButtonBangunDatar(
              context: context,
              screen: PersegiScreen(),
              label: "Persegi",
            ),
            buildButtonBangunDatar(
              context: context,
              screen: SegitigaScreen(),
              label: "Segitiga",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButtonBangunDatar({
    @required BuildContext context,
    @required Widget screen,
    @required String label,
  }) {
    return SizedBox(
      width: 200,
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => screen,
          ));
        },
        child: Text(label),
      ),
    );
  }
}
