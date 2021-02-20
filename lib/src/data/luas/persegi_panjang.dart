import 'luas.dart';

class PersegiPanjang implements Luas {
  PersegiPanjang(
    this._panjang,
    this._lebar,
  );

  final int _panjang;
  final int _lebar;

  double hitung() {
    return (_panjang * _lebar).toDouble();
  }
}
