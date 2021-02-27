import 'package:flutter/material.dart';
import 'package:flutter_uajy_coba/src/data/luas/persegi_panjang.dart';

class PersegiPanjangScreen extends StatefulWidget {
  PersegiPanjangScreen({Key key}) : super(key: key);

  @override
  _PersegiPanjangScreenState createState() => _PersegiPanjangScreenState();
}

class _PersegiPanjangScreenState extends State<PersegiPanjangScreen> {
  final _formKey = GlobalKey<FormState>();
  int _formPanjang = 0;
  int _formLebar = 0;
  double _hasil = 0;

  final TextEditingController _controllerFormPanjang = TextEditingController();
  final TextEditingController _controllerFormLebar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _controllerFormPanjang,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Input Panjang"),
                  onChanged: (value) {
                    setState(() {
                      _formPanjang = value.isEmpty ? 0 : int.parse(value);
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
                  controller: _controllerFormLebar,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Input Lebar"),
                  onChanged: (value) {
                    setState(() {
                      _formLebar = value.isEmpty ? 0 : int.parse(value);
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Lebar wajib diisi angka";
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
                              _hasil = PersegiPanjang(_formPanjang, _formLebar)
                                  .hitung();
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
                            _formPanjang = 0;
                            _formLebar = 0;
                            _hasil = 0;
                            _controllerFormPanjang.text =
                                _formPanjang.toString();
                            _controllerFormLebar.text = _formPanjang.toString();
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
