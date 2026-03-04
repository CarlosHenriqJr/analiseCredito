import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  bool _CadNovo = false;
  bool get CadNovo => _CadNovo;
  set CadNovo(bool value) {
    _CadNovo = value;
  }

  int _iContador = 0;
  int get iContador => _iContador;
  set iContador(int value) {
    _iContador = value;
  }

  int _numedorContador = 0;
  int get numedorContador => _numedorContador;
  set numedorContador(int value) {
    _numedorContador = value;
  }

  DateTime? _iHoraInicial;
  DateTime? get iHoraInicial => _iHoraInicial;
  set iHoraInicial(DateTime? value) {
    _iHoraInicial = value;
  }

  double _calcloDouble = 0.0;
  double get calcloDouble => _calcloDouble;
  set calcloDouble(double value) {
    _calcloDouble = value;
  }

  int _calculoInt = 0;
  int get calculoInt => _calculoInt;
  set calculoInt(int value) {
    _calculoInt = value;
  }
}
