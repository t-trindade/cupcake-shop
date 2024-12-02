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

  List<int> _orderItens = [];
  List<int> get orderItens => _orderItens;
  set orderItens(List<int> value) {
    _orderItens = value;
  }

  void addToOrderItens(int value) {
    orderItens.add(value);
  }

  void removeFromOrderItens(int value) {
    orderItens.remove(value);
  }

  void removeAtIndexFromOrderItens(int index) {
    orderItens.removeAt(index);
  }

  void updateOrderItensAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    orderItens[index] = updateFn(_orderItens[index]);
  }

  void insertAtIndexInOrderItens(int index, int value) {
    orderItens.insert(index, value);
  }

  List<int> _listValor = [];
  List<int> get listValor => _listValor;
  set listValor(List<int> value) {
    _listValor = value;
  }

  void addToListValor(int value) {
    listValor.add(value);
  }

  void removeFromListValor(int value) {
    listValor.remove(value);
  }

  void removeAtIndexFromListValor(int index) {
    listValor.removeAt(index);
  }

  void updateListValorAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    listValor[index] = updateFn(_listValor[index]);
  }

  void insertAtIndexInListValor(int index, int value) {
    listValor.insert(index, value);
  }

  int _ratingStar = 0;
  int get ratingStar => _ratingStar;
  set ratingStar(int value) {
    _ratingStar = value;
  }
}
