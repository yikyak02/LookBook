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

  List<String> _selectedclothing = [];
  List<String> get selectedclothing => _selectedclothing;
  set selectedclothing(List<String> value) {
    _selectedclothing = value;
  }

  void addToSelectedclothing(String value) {
    selectedclothing.add(value);
  }

  void removeFromSelectedclothing(String value) {
    selectedclothing.remove(value);
  }

  void removeAtIndexFromSelectedclothing(int index) {
    selectedclothing.removeAt(index);
  }

  void updateSelectedclothingAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedclothing[index] = updateFn(_selectedclothing[index]);
  }

  void insertAtIndexInSelectedclothing(int index, String value) {
    selectedclothing.insert(index, value);
  }

  String _firstgrid = '';
  String get firstgrid => _firstgrid;
  set firstgrid(String value) {
    _firstgrid = value;
  }

  String _secondgrid = '';
  String get secondgrid => _secondgrid;
  set secondgrid(String value) {
    _secondgrid = value;
  }

  String _thirdgrid = '';
  String get thirdgrid => _thirdgrid;
  set thirdgrid(String value) {
    _thirdgrid = value;
  }

  String _fourthgrid = '';
  String get fourthgrid => _fourthgrid;
  set fourthgrid(String value) {
    _fourthgrid = value;
  }

  String _fifthgrid = '';
  String get fifthgrid => _fifthgrid;
  set fifthgrid(String value) {
    _fifthgrid = value;
  }

  String _sixthgrid = '';
  String get sixthgrid => _sixthgrid;
  set sixthgrid(String value) {
    _sixthgrid = value;
  }

  String _seventhgrid = '';
  String get seventhgrid => _seventhgrid;
  set seventhgrid(String value) {
    _seventhgrid = value;
  }

  String _eighthgrid = '';
  String get eighthgrid => _eighthgrid;
  set eighthgrid(String value) {
    _eighthgrid = value;
  }

  String _ninthgrid = '';
  String get ninthgrid => _ninthgrid;
  set ninthgrid(String value) {
    _ninthgrid = value;
  }

  bool _searchisactive = false;
  bool get searchisactive => _searchisactive;
  set searchisactive(bool value) {
    _searchisactive = value;
  }
}
