import 'luas.dart';

class Segitiga implements Luas {
  Segitiga(this._alas, this._tinggi);

  final int _alas;
  final int _tinggi;

  double hitung() => 0.5 * (_alas * _tinggi);
}
