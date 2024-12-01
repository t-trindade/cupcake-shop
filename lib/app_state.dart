import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _nomeUsuario = '';
  String get nomeUsuario => _nomeUsuario;
  set nomeUsuario(String value) {
    _nomeUsuario = value;
  }

  bool _SideVisibility = false;
  bool get SideVisibility => _SideVisibility;
  set SideVisibility(bool value) {
    _SideVisibility = value;
  }

  String _imagemPerfil = '';
  String get imagemPerfil => _imagemPerfil;
  set imagemPerfil(String value) {
    _imagemPerfil = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _rua = '';
  String get rua => _rua;
  set rua(String value) {
    _rua = value;
  }

  String _bairro = '';
  String get bairro => _bairro;
  set bairro(String value) {
    _bairro = value;
  }

  String _cidade = '';
  String get cidade => _cidade;
  set cidade(String value) {
    _cidade = value;
  }

  String _estado = '';
  String get estado => _estado;
  set estado(String value) {
    _estado = value;
  }

  int _id = 0;
  int get id => _id;
  set id(int value) {
    _id = value;
  }

  bool _changeImageInProduct = false;
  bool get changeImageInProduct => _changeImageInProduct;
  set changeImageInProduct(bool value) {
    _changeImageInProduct = value;
  }
}
