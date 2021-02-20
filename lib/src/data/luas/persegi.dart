import 'luas.dart';

class Persegi implements Luas {
  Persegi(this._sisi);

  final int _sisi;

  double hitung() => (_sisi * _sisi).toDouble();
}
