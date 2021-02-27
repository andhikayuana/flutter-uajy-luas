import 'package:flutter/material.dart';
import 'package:flutter_uajy_coba/src/data/luas/persegi.dart';

class PersegiScreen extends StatefulWidget {
  PersegiScreen({Key key}) : super(key: key);

  @override
  _PersegiScreenState createState() => _PersegiScreenState();
}

class _PersegiScreenState extends State<PersegiScreen> {
  final _formKey = GlobalKey<FormState>();
  int _formSisi = 0;
  double _hasil = 0;

  final TextEditingController _controllerFormSisi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _controllerFormSisi,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Input Sisi"),
                  onChanged: (value) {
                    setState(() {
                      _formSisi = value.isEmpty ? 0 : int.parse(value);
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Sisi wajib diisi angka";
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
                              _hasil = Persegi(_formSisi).hitung();
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
                            _formSisi = 0;
                            _hasil = 0;
                            _controllerFormSisi.text = _formSisi.toString();
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
