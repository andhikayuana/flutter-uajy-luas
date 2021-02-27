import 'package:flutter/material.dart';
import 'package:flutter_uajy_coba/src/data/luas/segitiga.dart';

class SegitigaScreen extends StatefulWidget {
  SegitigaScreen({Key key}) : super(key: key);

  @override
  _SegitigaScreenState createState() => _SegitigaScreenState();
}

class _SegitigaScreenState extends State<SegitigaScreen> {
  final _formKey = GlobalKey<FormState>();
  int _formAlas = 0;
  int _formTinggi = 0;
  double _hasil = 0;

  final TextEditingController _controllerFormAlas = TextEditingController();
  final TextEditingController _controllerFormTinggi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _controllerFormAlas,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Input Alas"),
                  onChanged: (value) {
                    setState(() {
                      _formAlas = value.isEmpty ? 0 : int.parse(value);
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Panjang wajib diisi angka";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controllerFormTinggi,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Input Tinggi"),
                  onChanged: (value) {
                    setState(() {
                      _formTinggi = value.isEmpty ? 0 : int.parse(value);
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Tinggi wajib diisi angka";
                    }
                    return null;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            setState(() {
                              _hasil =
                                  Segitiga(_formAlas, _formTinggi).hitung();
                            });
                          }
                        },
                        child: Text(
                          "Hitung",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            _formAlas = 0;
                            _formTinggi = 0;
                            _hasil = 0;
                            _controllerFormAlas.text = _formAlas.toString();
                            _controllerFormTinggi.text = _formTinggi.toString();
                          });
                        },
                        child: Text("Reset"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Hasil perhitungan",
                  style: TextStyle(fontSize: 28),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "$_hasil",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
