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

  bool _SearchActive = false;
  bool get SearchActive => _SearchActive;
  set SearchActive(bool value) {
    _SearchActive = value;
  }

  int _Stars = 0;
  int get Stars => _Stars;
  set Stars(int value) {
    _Stars = value;
  }
}
